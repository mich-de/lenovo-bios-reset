# Reverse engineering SysPasswordDxe — recupero password BIOS supervisore

**Dispositivo:** Lenovo IdeaPad Slim 5 14Q8X9 (83HL), InsydeH2O, Snapdragon X Plus ARM64 (AArch64).
**Obiettivo:** ricostruire l'algoritmo di hashing della password supervisore BIOS per brute-force offline.
**Esito:** RISOLTO. Password supervisore = `qwerty` (match esatto dell'hash memorizzato).

## Dati di partenza
- Driver: `SysPassword.efi` (PE32 AArch64, 61440 byte). Disasm: `SysPassword.asm` (llvm-objdump).
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

## Da fare
- `PwPS/PwPU` (`33796C56…`) usa lo stesso schema ma password diversa (non `qwerty`): da attaccare con wordlist più ampio.
- Script di brute-force di riferimento in PowerShell (SHA256 doppio, padding ascii00, salt FFx32).
