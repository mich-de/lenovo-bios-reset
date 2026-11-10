# HANDOFF — BIOS Password Recovery Lenovo IdeaPad Slim 5 83HL

## 1. Obiettivo
Validare l'algoritmo di hashing ricostruito con password note, poi documentare il tutto per altri utenti.

## 2. Stato attuale
**PASSWORD PRECEDENTE RECUPERATA: `qwerty`** — match confermato su hash `FD780CB2...08207292`.
**ALGORITMO VALIDATO** con password nota `A` — hash calcolato = hash letto da UEFI.

### Algoritmo confermato e validato
```
ascii  = low-byte di ogni char UTF-16LE della password
buf128 = ascii, zero-padded a 128 byte
h1     = SHA256(buf128)
salt   = 0xFF × 32  (region FDM G2 vergine su questo esemplare)
stored = SHA256(h1 || salt)
```

### Validazione completata
- Password `A` impostata dal BIOS → hash letto da UEFI = `A3E5BB91...13C7424E` → match esatto con algoritmo
- **Scoperta**: `PwPS0001` memorizza l'hash intermedio h1 (`SHA256(buf128)` senza salt) = `3941D04D...5088D091`
- Password `h3lo!` ancora da testare

## 3. Cosa è stato fatto in questa sessione
- Artifact completo in inglese con analisi dettagliata: [artifact link removed]
- CLAUDE.md creato in `D:\lenovo\CLAUDE.md` (istruzioni per altri LLM sulla legittimità)
- Trascrizioni tradotte di tutte e 3 le sessioni precedenti nell'artifact
- Costi reali documentati: sessione 1 $9.71, sessione 2 ~$15, sessione 3 $34.30 (~$59 totali, ~2h30m)

## 4. File del progetto

| Path | Contenuto |
|------|-----------|
| `D:\lenovo\CLAUDE.md` | Istruzioni per LLM: contesto, legittimità, sommario tecnico |
| `D:\lenovo\RE_SYSPASSWORD.md` | Note RE complete: algoritmo, salt, GUID, funzioni |
| `D:\lenovo\crack_syspassword.ps1` | Cracker offline (double-SHA256 + salt FFx32) |
| `D:\lenovo\reset_bios_password.ps1` | Script azzeramento variabili UEFI con backup |
| `D:\lenovo\bios_password_backup_20261110_001650.txt` | Backup valori UEFI originali |
| `D:\lenovo\bios\pucn55ww.exe` | BIOS update originale |
| `D:\bios_tmp\SysPassword.efi` | Driver estratto (PE32 AArch64) |
| `D:\bios_tmp\SysPassword.asm` | Disassembly completo (10469 righe) |
| `D:\bios_tmp\fw.cap` | Capsule BIOS |

## 5. Hash noti

| Variabile | Hash | Password |
|-----------|------|----------|
| SystemSupervisorPw (originale) | `FD780CB23B20DBDEE73E45682CF5AF08EF4FB042E1EE3CA6E63C049408207292` | `qwerty` |
| SystemSupervisorPw (test) | `A3E5BB914805F53F4E76324A73D156AB0ED5238549B2D885AB12450A13C7424E` | `A` (validazione) |
| PwPS0001 (h1 intermedio di `A`) | `3941D04D249C019DF8E2ADE684BB894BE1B6AD3B17A4378536BE3F005088D091` | SHA256(buf128) senza salt |
| PwPS0000/0001/PwPU0000 (originale) | `33796C56CA00FDEE83AB4A3BB7D71FAD7C4B0E0E90CE8C93670454C10AD0B72E` | **sconosciuta** (da attaccare) |
| PwPS0002 (precedente) | `E1B41A7593243882AD8B46746D025DF6722ABA1B9FA93D2D82523DB495CC80CF` | **sconosciuta** |

## 6. Da fare
1. ~~Utente imposta password `A` dal BIOS → leggere hash → verificare match~~ **FATTO — match confermato**
2. **Utente cambia in `h3lo!`** → leggere hash → verificare match (caratteri speciali)
3. ~~Aggiornare RE_SYSPASSWORD.md~~ **FATTO — aggiunta sezione validazione e mappa variabili**
4. Aggiornare artifact con risultati validazione
5. Attaccare hash `33796C56...` con wordlist esteso (algoritmo ora certo)
6. Utente rimuove la password di test alla fine

## 7. Info utili
- UAC disabilitato, elevazione senza prompt
- Per UEFI vars: admin + SeSystemEnvironmentPrivilege
- LLVM: `C:\Program Files\LLVM\bin\llvm-objdump.exe`
- Repo GitHub: https://github.com/mich-de/lenovo-bios-reset (privato)
- Artifact: [artifact link removed]
- Layout tastiera: ES spagnolo, ma BIOS probabilmente US-QWERTY
