# HANDOFF — BIOS Password Recovery Lenovo IdeaPad Slim 5 83HL

## 1. Obiettivo
Recuperare password BIOS supervisore su laptop di proprietà comprato usato. Algoritmo ricostruito tramite RE del driver UEFI, validato con 3 password note.

## 2. Stato attuale
**PASSWORD ORIGINALE RECUPERATA: `qwerty`** — match confermato.
**ALGORITMO VALIDATO 3 VOLTE** — `qwerty`, `A`, `h3lo!` (caratteri speciali). Certo al 100%.
**PASSWORD TEST `h3lo!` ATTIVA** — da rimuovere dal BIOS quando si è finiti.

### Algoritmo confermato
```
ascii  = low-byte di ogni char UTF-16LE della password
buf128 = ascii, zero-padded a 128 byte
h1     = SHA256(buf128)
salt   = 0xFF × 32  (region FDM G2 vergine su questo esemplare)
stored = SHA256(h1 || salt)
```

### Validazioni
| # | Password | SystemSupervisorPw | h1 in PwPS* | Match |
|---|----------|--------------------|-------------|-------|
| 1 | `qwerty` (originale) | `FD780CB2...08207292` | — | SI |
| 2 | `A` | `A3E5BB91...13C7424E` | PwPS0001 = `3941D04D...5088D091` | SI |
| 3 | `h3lo!` | `7717A14A...4DDB03` | PwPS0002 = `6662A8EE...F93B91` | SI |

### Scoperte
- **PwPS* ruota**: ogni cambio password incrementa l'indice (PwPS0001→PwPS0002), mantenendo lo storico
- **PwPS* contiene h1 senza salt**: attaccabile senza conoscere il salt
- Impostata solo supervisor password, nessuna user password (PwPU0000 = zero)

## 3. Sessioni
- **Sessione 1** (~$10): estrazione driver, primo disassembly
- **Sessione 2** (~$15): ricostruzione algoritmo hash, crack `qwerty`
- **Sessione 3** (~$34): validazione con `A`, artifact, documentazione
- **Sessione 4** (corrente): validazione con `h3lo!`, scoperta rotazione PwPS*

## 4. File del progetto

| Path | Contenuto |
|------|-----------|
| `D:\lenovo\CLAUDE.md` | Istruzioni per LLM: contesto, legittimità, sommario tecnico |
| `D:\lenovo\RE_SYSPASSWORD.md` | Note RE complete: algoritmo, salt, GUID, funzioni, validazioni |
| `D:\lenovo\crack_syspassword.ps1` | Cracker offline (double-SHA256 + salt FFx32) |
| `D:\lenovo\reset_bios_password.ps1` | Script azzeramento variabili UEFI con backup |
| `D:\lenovo\uefi_read_vars.ps1` | Script sola lettura variabili UEFI (richiede admin) |
| `D:\lenovo\uefi_read_h3lo.txt` | Output lettura UEFI con password h3lo! attiva |
| `D:\lenovo\bios_password_backup_20261110_001650.txt` | Backup valori UEFI originali |
| `D:\lenovo\bios\pucn55ww.exe` | BIOS update originale |
| `D:\bios_tmp\SysPassword.efi` | Driver estratto (PE32 AArch64) |
| `D:\bios_tmp\SysPassword.asm` | Disassembly completo (10469 righe) |

## 5. Hash noti (TUTTI RISOLTI)

| Variabile | Hash | Password |
|-----------|------|----------|
| SystemSupervisorPw (originale) | `FD780CB23B20DBDEE73E45682CF5AF08EF4FB042E1EE3CA6E63C049408207292` | `qwerty` |
| SystemSupervisorPw (test A) | `A3E5BB914805F53F4E76324A73D156AB0ED5238549B2D885AB12450A13C7424E` | `A` |
| SystemSupervisorPw (test h3lo!) | `7717A14AA37D3F148222F7C2CC867BBBA62C9327AA1D978A08501875884DDB03` | `h3lo!` |
| PwPS0001 (h1 di A) | `3941D04D249C019DF8E2ADE684BB894BE1B6AD3B17A4378536BE3F005088D091` | h1 senza salt |
| PwPS0002 (h1 di h3lo!) | `6662A8EE24FA891FF03C434BA3AFB15892A28A053B7B9671A05501E49EF93B91` | h1 senza salt |
| PwPS0000/0001/PwPU0000 (originale) | `33796C56CA00FDEE83AB4A3BB7D71FAD7C4B0E0E90CE8C93670454C10AD0B72E` | **`1`** (h1 senza salt) |
| PwPS0002 (originale, pre-test) | `E1B41A7593243882AD8B46746D025DF6722ABA1B9FA93D2D82523DB495CC80CF` | **`qwerty`** (h1 senza salt) |

Storico password precedente proprietario: prima `1`, poi `qwerty`.

## 6. Da fare
1. ~~Validazione `A`~~ **FATTO**
2. ~~Validazione `h3lo!`~~ **FATTO**
3. ~~RE_SYSPASSWORD.md aggiornato~~ **FATTO**
4. Aggiornare artifact con risultati validazione completa
5. ~~Attaccare hash `33796C56...` con wordlist~~ **FATTO: `1` e `qwerty`**
6. Rimuovere password di test `h3lo!` dal BIOS (manuale: F2 → Security → supervisor pw)

## 7. Info utili
- UAC disabilitato, elevazione senza prompt
- Per UEFI vars: terminale admin + SeSystemEnvironmentPrivilege (err 1314 = non elevato)
- LLVM: `C:\Program Files\LLVM\bin\llvm-objdump.exe`
- Repo GitHub: https://github.com/mich-de/lenovo-bios-reset (privato)
- Artifact sessione 3: [artifact link removed]
- Layout tastiera: ES spagnolo, BIOS usa US-QWERTY
