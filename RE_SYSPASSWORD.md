# Reverse engineering SysPasswordDxe — recupero password BIOS supervisore

**Dispositivo:** Lenovo IdeaPad Slim 5 14Q8X9 (83HL), InsydeH2O, Snapdragon X Plus ARM64 (AArch64).
**Obiettivo:** ricostruire l'algoritmo di hashing della password supervisore BIOS per brute-force offline.
**Esito:** RISOLTO. Password supervisore = `qwerty` (match esatto dell'hash memorizzato).

## Dati di partenza
- Driver: `firmware/SysPassword.efi` (PE32 AArch64, 61440 byte). Disasm: `firmware/SysPassword.asm` (llvm-objdump).
- Hash memorizzati (UEFI vars):
  - `SystemSupervisorPw` = `FD780CB23B20DBDEE73E45682CF5AF08EF4FB042E1EE3CA6E63C049408207292`
  - `PwPS0000/PwPU0000` = `33796C56CA00FDEE83AB4A3BB7D71FAD7C4B0E0E90CE8C93670454C10AD0B72E`
- Protocollo usato: EFI_HASH2_PROTOCOL, GUID SHA-256 `{51AA59DE-FDF2-4EA3-BC63-875FB7842EE9}`.

## Algoritmo (confermato)
```
ascii  = low-byte di ogni carattere UTF-16LE della password   (func 0x1650)
buf128 = ascii, zero-padded a 128 byte                        (buffer da 128)
h1     = SHA256(buf128)                                        (func 0x973C, len=128)
stored = SHA256( h1[0..32] || SALT[0..32] )                   (func 0x97D8, input 64 byte)
```
Il confronto finale (0x9058) è un memcmp a 32 byte dei due digest.
Catena: `0x900C` (entry hash) -> `0x8EF0` (double-hash) -> `0x973C` (1° SHA) + `0x97D8` (2° SHA) ; verifica Set/Check: `0x1BB8`.

## Derivazione del SALT (0x9514 -> 0x9098 -> 0x5594 -> 0x5328)
Il salt NON è una costante nel `.data`. È letto dalla flash via **Insyde H2O Flash Device Map ("HFDM")**:
- Globale `[0xD000+0x120]` = puntatore alla struttura con signature `"HFDM"` (ref a 0xC6DC = `48 46 44 4D`).
- `0x5328` cerca una region per GUID nella FDM. Entry: `GUID@+0x00`, `base(u64)@+0x20`, `size(u64)@+0x28`, stride `0x54`.
- Region usate (GUID a 0xC1E8 / 0xC1F8):
  - **G1** `{F392B582-1F08-4E95-B51D-598B19F6993F}` -> base `0x600000`, size `0x800`
  - **G2** `{FA01652A-4942-417A-AE1C-B8FA2BD31A84}` -> base `0x600800`, size `0x800` (contiguo dopo G1)
- `0x9514` calcola: `salt_src = baseG1 + sizeG1 + sizeG2 - 32 = 0x600FE0`
  -> SALT = ultimi 32 byte della region G2 (offset flash `0x600FE0`).

## Perché il salt è `FF x 32`
Mapping flash->file in `fw.cap` (capsule): `file = flash + 0x6EEB84` (verificato: region FDM `base=0x647000` -> file `0xD35B84`, dove sta la signature HFDM).
Nel capsule le region G1 e G2 sono interamente `0xFF` (flash vergine): la region non è mai stata inizializzata su questo esemplare. Quindi a runtime:
```
SALT = 0xFF * 32
```
Nessun dump SPI necessario.

## Risultato / verifica
```
pw        = "qwerty"
buf128    = ASCII("qwerty") + 0x00 * 122          (128 byte)
h1        = SHA256(buf128)
stored    = SHA256( h1 || 0xFF*32 )
          = FD780CB2 3B20DBDE E73E4568 2CF5AF08 EF4FB042 E1EE3CA6 E63C0494 08207292   ✓ MATCH
```

## Validazione con password nota

Algoritmo validato impostando password `A` dal BIOS e rileggendo le variabili UEFI.

| Variabile | Valore letto | Valore atteso | Match |
|-----------|-------------|--------------|-------|
| SystemSupervisorPw | `A3E5BB914805F53F4E76324A73D156AB0ED5238549B2D885AB12450A13C7424E` | `SHA256(SHA256("A"+0x00*127) \|\| 0xFF*32)` | **SI** |
| PwPS0001 | `3941D04D249C019DF8E2ADE684BB894BE1B6AD3B17A4378536BE3F005088D091` | `SHA256("A"+0x00*127)` = h1 intermedio | **SI** |
| PwPS0000 | `00*32` | — | azzerato (cambio pw) |
| PwPS0002 | `00*32` | — | azzerato (cambio pw) |
| PwPU0000 | `00*32` | — | azzerato (no user pw) |

### Scoperta: PwPS0001 memorizza h1 (hash intermedio senza salt)

`PwPS0001` contiene `SHA256(buf128)` — il primo round di SHA-256 **prima** dell'applicazione del salt. Questo significa che il BIOS salva sia l'hash finale (con salt, in `SystemSupervisorPw`) sia l'hash intermedio (senza salt, in `PwPS0001`). `PwPS0001` è scrivibile da OS (non protetto da Variable Policy), quindi un attaccante potrebbe confrontare direttamente contro `SHA256(buf128)` senza conoscere il salt.

## Variabili UEFI — mappa completa

| Variabile | GUID | Contenuto | Protetta |
|-----------|------|-----------|----------|
| SystemSupervisorPw | {7f9102df-e999-4740-80a6-b2038512217b} | Hash finale (h1\|\|salt) | SI (Variable Policy) |
| PwPS0000 | {e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a} | Hash password corrente (o zero) | NO |
| PwPS0001 | {e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a} | Hash intermedio h1 (senza salt) | NO |
| PwPS0002 | {e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a} | Hash password precedente | NO |
| PwPU0000 | {e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a} | Hash user password | NO |
| PwPSHistory | {e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a} | Contatore cambio password | NO |

## Validazione 2: password `h3lo!` (caratteri speciali + numeri)

| Variabile | Valore letto | Valore atteso | Match |
|-----------|-------------|--------------|-------|
| SystemSupervisorPw | `7717A14AA37D3F148222F7C2CC867BBBA62C9327AA1D978A08501875884DDB03` | `SHA256(SHA256("h3lo!"+0x00*123) \|\| 0xFF*32)` | **SI** |
| PwPS0002 | `6662A8EE24FA891FF03C434BA3AFB15892A28A053B7B9671A05501E49EF93B91` | `SHA256("h3lo!"+0x00*123)` = h1 intermedio | **SI** |
| PwPS0001 | `3941D04D249C019DF8E2ADE684BB894BE1B6AD3B17A4378536BE3F005088D091` | h1 di `A` (password precedente, conservato) | storico |
| PwPS0000 | `00*32` | — | azzerato |
| PwPU0000 | `00*32` | — | azzerato (no user pw) |

### Scoperta: rotazione indice PwPS*

Con password `A`, l'hash intermedio h1 era in **PwPS0001**. Con password `h3lo!` (impostata dopo), h1 è in **PwPS0002** e PwPS0001 conserva ancora l'hash di `A`. Il BIOS incrementa l'indice PwPS* a ogni cambio password, mantenendo gli hash precedenti come storico.

## Hash sconosciuti — risolti

Attacco con `crack_unknown_hashes.ps1` (h1-only, senza salt):

| Hash | Variabile | Password | Metodo |
|------|-----------|----------|--------|
| `33796C56CA00FDEE83AB4A3BB7D71FAD7C4B0E0E90CE8C93670454C10AD0B72E` | PwPS0000/0001/PwPU0000 originale | **`1`** | h1 = SHA256(pad128) |
| `E1B41A7593243882AD8B46746D025DF6722ABA1B9FA93D2D82523DB495CC80CF` | PwPS0002 originale (pre-test) | **`qwerty`** | h1 = SHA256(pad128) |

Interpretazione: il precedente proprietario ha impostato prima `1`, poi cambiato in `qwerty`. PwPS conserva lo storico completo delle password precedenti come hash intermedi (h1 senza salt).

## Da fare
- ~~Validazione con password `h3lo!` (caratteri speciali)~~ **FATTO**
- ~~Attacco hash sconosciuti `33796C56…` e `E1B41A75…`~~ **FATTO: `1` e `qwerty`**
- Verificare se il BIOS al boot controlla `SystemSupervisorPw` o `PwPS0001` — se controlla PwPS0001, il salt è irrilevante per il crack
