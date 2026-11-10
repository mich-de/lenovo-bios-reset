# HANDOFF — BIOS Password Recovery Lenovo IdeaPad Slim 5 83HL

## 1. Obiettivo
Recuperare password BIOS supervisore su laptop di proprietà comprato usato. Algoritmo ricostruito tramite RE del driver UEFI, validato con 3 password note. Tutti gli hash craccati.

## 2. Stato attuale
**PASSWORD ORIGINALE RECUPERATA: `qwerty`** — match confermato.
**ALGORITMO VALIDATO 3 VOLTE** — `qwerty`, `A`, `h3lo!`. Certo al 100%.
**TUTTI GLI HASH RISOLTI** — inclusi PwPS orfani: `1` (prima pw) e `qwerty` (h1).
**ODISSREA v2.0** — cracker C ARM64, SHA-256 HW + 10 thread = **50.3M hash/sec**.
**PASSWORD TEST `h3lo!` ANCORA ATTIVA** — da rimuovere dal BIOS (F2 → Security → supervisor pw).

### Algoritmo confermato
```
ascii  = low-byte di ogni char UTF-16LE della password
buf128 = ascii, zero-padded a 128 byte
h1     = SHA256(buf128)
salt   = 0xFF × 32  (region FDM G2 vergine su questo esemplare)
stored = SHA256(h1 || salt)
```

### Storico password precedente proprietario
1. `1` (prima password impostata)
2. `qwerty` (password finale, quella trovata con il RE)

## 3. Sessioni
- **Sessione 1** (~$10): estrazione driver, primo disassembly
- **Sessione 2** (~$15): ricostruzione algoritmo hash, crack `qwerty`
- **Sessione 3** (~$34): validazione con `A`, artifact, documentazione
- **Sessione 4**: validazione con `h3lo!`, scoperta rotazione PwPS*
- **Sessione 5** (corrente): crack hash orfani (`1`, `qwerty`), OdissREA v2.0 (ARM SHA-256 HW + multi-thread), riorganizzazione repo

## 4. Struttura repo

```
lenovo/
├── README.md                     Documentazione completa in inglese
├── RE_SYSPASSWORD.md             Note RE: algoritmo, salt, funzioni, validazioni
├── CLAUDE.md                     Istruzioni per LLM
├── HANDOFF.md                    Questo file
├── firmware/
│   ├── SysPassword.efi           Driver target (PE32 AArch64, 61440 byte)
│   ├── SysPassword.asm           Disassembly completo (10469 righe)
│   ├── fw.cap                    Capsule UEFI estratta (16MB)
│   ├── fw.cap.guids.csv          GUID map UEFITool
│   ├── fw.cap.report.txt         Report estrazione UEFITool
│   ├── pucn55ww.txt              BIOS release notes
│   ├── lenovo-wmi.txt            Note interfaccia WMI Lenovo
│   └── bios_ext/                 File estratti da BIOS update exe
│       ├── H2OFFT-Wx64.exe
│       ├── PUCN55WW.cap
│       └── platform.ini
├── tools/
│   ├── odissrea.c                OdissREA v2.0 — cracker C (ARM SHA-256 HW + 10 thread)
│   ├── odissrea.exe              Compilato ARM64 (~50M hash/sec)
│   ├── odissrea_wordlist.ps1     Cracker PS wordlist (h1 + double-SHA256)
│   ├── odissrea_lite.ps1         Cracker PS originale semplice
│   ├── reset_bios_password.ps1   Azzeramento variabili UEFI con backup
│   ├── uefi_read_vars.ps1        Lettura sola variabili UEFI (admin)
│   ├── dump_rom.ps1              Script dump SPI flash
│   ├── test_h2offt.ps1           Test H2OFFT flash tool
│   ├── h2offt_files.txt          Log file H2OFFT
│   └── h2offt_log.txt            Log estrazione H2OFFT
├── evidence/
│   ├── uefi_read_h3lo.txt        Dump UEFI con password h3lo! attiva
│   ├── uefi_read_debug.txt       Dump UEFI debug
│   └── bios_password_backup_*.txt  Backup valori UEFI originali
└── bios/
    └── pucn55ww.exe              BIOS update capsule (~13MB)
```

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

## 6. Da fare
1. ~~Validazione `A`~~ **FATTO**
2. ~~Validazione `h3lo!`~~ **FATTO**
3. ~~RE_SYSPASSWORD.md aggiornato~~ **FATTO**
4. Aggiornare artifact con risultati validazione completa (artifact sessione 3: [artifact link removed])
5. ~~Attacco hash sconosciuti~~ **FATTO: `1` e `qwerty`**
6. Rimuovere password test `h3lo!` dal BIOS (F2 → Security → supervisor pw → h3lo! → vuoto)
7. Eventuale test blind: impostare password ignota, craccarla con OdissREA

## 7. OdissREA v2.0 — performance

| Versione | Velocità | Note |
|----------|----------|------|
| v1 PS (odissrea_lite) | ~5-10K/sec | PowerShell puro, single-thread |
| v1 C (software SHA) | ~860K/sec | C -O3, SHA software, single-thread |
| **v2 C (ARM HW)** | **50.3M/sec** | ARM SHA-256 HW + 10 thread, Snapdragon X Plus |

Tempi stimati brute-force (charset ASCII 32-126):

| Lunghezza | Spazio | Tempo |
|-----------|--------|-------|
| 4 char | 83M | <2 sec |
| 5 char | 7.9G | ~2.6 min |
| 6 char | 735G | ~4 ore |
| 6 alfanum | 2.2G | ~44 sec |
| 8 alfanum | 2.8T | ~15 ore |

Compilazione: `clang -O3 -march=native -D_CRT_SECURE_NO_WARNINGS -o odissrea.exe odissrea.c`

## 8. Info utili
- UAC disabilitato, elevazione senza prompt
- Per UEFI vars: terminale admin + SeSystemEnvironmentPrivilege (err 1314 = non elevato)
- LLVM: `C:\Program Files\LLVM\bin\llvm-objdump.exe` e `clang.exe`
- Repo GitHub: https://github.com/mich-de/lenovo-bios-reset (privato)
- Artifact sessione 3: [artifact link removed]
- Layout tastiera: ES spagnolo, BIOS usa US-QWERTY
- `D:\bios_tmp` contiene copie dei file ora tutti nel repo — cancellabile
