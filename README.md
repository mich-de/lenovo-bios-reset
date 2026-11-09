# Lenovo IdeaPad Slim 5 83HL — BIOS Password Reset

Reset della password BIOS dimenticata su Lenovo IdeaPad Slim 5 14Q8X9 (machine type 83HL, Snapdragon X Plus ARM64, BIOS InsydeH2O PUCN55WW).

## Cosa fa

Lo script `reset_bios_password.ps1` azzera le variabili UEFI che contengono la password BIOS:

| Variabile | GUID | Funzione |
|-----------|------|----------|
| SystemSupervisorPw | `{7f9102df-...}` | Password supervisor |
| PwPS0000/0001/0002 | `{e0ab6c1f-...}` | Password corrente e precedenti |
| PwPU0000 | `{e0ab6c1f-...}` | Password utente |
| PwPSHistory/PwPUHistory | `{e0ab6c1f-...}` | Cronologia password |
| PwPST | `{e0ab6c1f-...}` | Timestamp password |

## Uso

```powershell
# Esegui come amministratore
powershell -ExecutionPolicy Bypass -File reset_bios_password.ps1
```

Lo script:
1. Fa un backup di tutte le variabili prima di modificarle
2. Chiede conferma ("SI" per procedere)
3. Scrive zeri in ogni variabile
4. Verifica che l'azzeramento sia riuscito

Dopo l'esecuzione, riavviare il laptop.

## Note

- Le variabili hanno attributi `7` (BS+RT+NV) senza bit di autenticazione, quindi sono scrivibili da Windows con privilegi admin
- Testato su BIOS PUCN55WW. Potrebbe non funzionare su altre versioni
- Il brute force SHA-256 (semplice e con padding) non ha funzionato: l'algoritmo di hash è proprietario
- Se lo script fallisce, contattare Lenovo al 02 30310000 con serial e prova d'acquisto

## Tentativi di reverse engineering falliti

- SHA-256 semplice (ASCII, UTF-16LE, +null): nessun match su ~80M candidati
- SHA-256 con padding a 32/40 byte: nessun match su ~80M candidati
- Analisi XOR (single-byte, cross-variable, length-prefix, scancode): tutto negativo
- CMOS battery disconnect: password in EEPROM, non volatile
- 3 tentativi errati: nessun codice "System Disabled" mostrato
