# HANDOFF — Reset password BIOS Lenovo IdeaPad Slim 5 83HL

## 1. Obiettivo sessione
Recuperare la password BIOS dimenticata del laptop Lenovo IdeaPad Slim 5 14Q8X9 (machine type 83HL, Snapdragon X Plus ARM64, BIOS PUCN55WW InsydeH2O).

## 2. Stato corrente
**Brute force esaurito.** Due round completi (20 agenti totali) + analisi XOR: nessun match. L'algoritmo di hash è proprietario o usa salt/schema sconosciuto. Il cracking senza reverse engineering del firmware SysPasswordDxe non è praticabile.

**Prossimo passo**: azzerare le variabili UEFI (attr=7, nessuna autenticazione) oppure chiamare Lenovo.

## 3. Scoperte chiave

### Variabili UEFI trovate (leggibili da Windows con admin + SeSystemEnvironmentPrivilege)
| Variabile | GUID | Size | Attr | Contenuto |
|-----------|------|------|------|-----------|
| SystemSupervisorPw | {7f9102df-e999-4740-80a6-b2038512217b} | 32 | 7 | FD780CB23B20DBDEE73E45682CF5AF08EF4FB042E1EE3CA6E63C049408207292 |
| PwPS0000 | {e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a} | 32 | 7 | 33796C56CA00FDEE83AB4A3BB7D71FAD7C4B0E0E90CE8C93670454C10AD0B72E |
| PwPS0001 | stessa | 32 | 7 | = PwPS0000 (identico) |
| PwPS0002 | stessa | 32 | 7 | E1B41A7593243882AD8B46746D025DF6722ABA1B9FA93D2D82523DB495CC80CF |
| PwPU0000 | stessa | 32 | 7 | = PwPS0000 (identico) |
| PwPSHistory | stessa | 6 | 7 | 020001000000 |
| PwPST | stessa | 16 | 7 | E907051A0A1B3A00... (timestamp) |
| PwHddPST/PUT | stessa | 16 | 7 | E90705160C0B1B00... (timestamp) |

- **Attr=7** (BS+RT+NV, nessuna autenticazione) → le variabili sono **scrivibili** da Windows
- PwPS0000=PwPS0001=PwPU0000 → stessa password corrente
- PwPS0002 → password precedente
- SystemSupervisorPw ≠ PwPS0000 → hash diverso o algoritmo diverso

### Algoritmo di hash (da indagare)
Fonte: gist Hyedryn (Asus VivoBook, AMI UEFI) — **non confermato per InsydeH2O Lenovo**:
- 32 byte (64 hex) = **SHA-256 di password UTF-16LE paddata con zeri a 40 byte** (20 caratteri)
- Formula: `SHA256(password_utf16le + \x00 * (40 - len(password_utf16le)))`
- Questo spiegherebbe perché il brute force SHA-256 semplice ha fallito

Alternative ancora da testare:
- XOR con chiave fissa (CVE-2023-31041 InsydeH2O 5.0-5.5)
- Password in chiaro con header lunghezza (come RedmiBook 16, ma i nostri dati non sembrano ASCII)
- SHA-256 con salt separato o PBKDF2
- Hash dei scancode tastiera anziché dei caratteri

### Script preparato ma non eseguito
- `scratchpad\try_xor.ps1` — analisi XOR: single-byte XOR, confronto tra variabili, teoria length-prefix, interpretazione scancode

## 4. Tentativi falliti

### Brute force SHA-256 semplice (10 agenti paralleli)
Testato lo spazio completo:
- Lowercase a-z con [a-z0-9], lunghezza 1-5 (tutti i range a-c, d-f, g-i, j-l, m-o, p-s, t-v, w-z)
- Uppercase A-Z con [A-Z0-9], lunghezza 1-5
- Numeri puri 1-8 cifre
- Dizionario ~80 password comuni
- Codifiche: ASCII, UTF-16LE, UTF-16LE+null terminator
- **Risultato: zero match su ~80M+ candidati**

Causa probabile: l'algoritmo non è SHA-256 semplice. Serve padding o salt.

### Dalla sessione precedente
- Scollegare batteria CMOS: non funziona (password in EEPROM)
- Jumper CMOS CLR: non presente sul modello
- 3 tentativi errati: nessun codice "System Disabled" mostrato

## 5. Opzioni rimaste (in ordine di priorità)

### A. ~~Brute force con padding~~ FATTO — nessun match
Round 2 (10 agenti): SHA-256 con padding a 32/40 byte, UTF-16LE e ASCII, lowercase/uppercase/digits len 1-8. Zero match.

### B. ~~Analisi XOR~~ FATTO — negativa
Single-byte XOR, confronto tra variabili, length-prefix, scancode: tutto negativo. Confermato che è un hash, non XOR/plaintext.

### C. Azzerare le variabili UEFI (PROSSIMO PASSO)
Scrivere 32 byte di zeri in SystemSupervisorPw, PwPS0000/0001/0002, PwPU0000. Attr=7 senza autenticazione → dovrebbe essere possibile. Script:
```powershell
SetFirmwareEnvironmentVariableEx("SystemSupervisorPw", "{7f9102df-...}", [byte[]]::new(32), 32, 7)
```
**Rischio**: se il BIOS valida il contenuto, potrebbe rifiutare o brickare. Ma senza bit di autenticazione il rischio è basso.

### D. Contattare Lenovo
- Telefono: 02 30310000 (lun-ven 9-18)
- Serial: 83HL, machine type 83HL
- Acquistato su Subito.it → serve screenshot + ricevuta pagamento

## 6. File modificati/creati
- `D:\lenovo\HANDOFF.md` — questo file
- `scratchpad\read_uefi.ps1/2` — script lettura variabili UEFI
- `scratchpad\read_pw.ps1` — script lettura variabili password
- `scratchpad\enum_uefi.ps1` — enumerazione tutte le variabili UEFI
- `scratchpad\crack_*.ps1` — script brute force (10 varianti per range)
- `scratchpad\try_xor.ps1` — analisi XOR (NON ESEGUITO)
- `scratchpad\*_result.txt` — risultati vari

## 7. Info utili
- UAC disabilitato → elevazione senza prompt
- Per leggere/scrivere UEFI vars serve: admin + SeSystemEnvironmentPrivilege
- Script elevati via: `Start-Process powershell -Verb RunAs -ArgumentList "-ExecutionPolicy Bypass -File <path>" -Wait`
- 111 variabili UEFI totali enumerate (lista completa in enum_result.txt)
- BIOS InsydeH2O versione PUCN55WW
- CVE rilevanti: CVE-2021-43613 (hash esposti), CVE-2023-31041 (cleartext opzionale), CVE-2021-38489 (HDD pw in chiaro)
