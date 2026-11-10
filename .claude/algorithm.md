# Hash Algorithm — InsydeH2O SysPassword

Reverse-engineered from `firmware/SysPassword.efi` (PE32 AArch64, GUID 42FCB444-...).
Full RE notes in `RE_SYSPASSWORD.md`.

## Algorithm (validated 5 times)

```
input    = password string (ASCII characters, max 128)
buf128   = input zero-padded to 128 bytes
h1       = SHA256(buf128)
salt     = 32 bytes from SPI flash HFDM region
stored   = SHA256(h1 || salt)
```

On this unit, both FDM regions (G1/G2) are virgin flash: `salt = 0xFF × 32`.
On units with initialized HFDM, the salt differs — read it from flash.

## UEFI Variables

| Variable | GUID | Content | Writable from OS |
|----------|------|---------|:---:|
| `SystemSupervisorPw` | `{7f9102df-e999-4740-80a6-b2038512217b}` | `stored` (double SHA-256 + salt) | No (Variable Policy) |
| `PwPS0000` | `{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}` | `h1` of current password | Yes |
| `PwPS0001` | `{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}` | `h1` of previous password | Yes |
| `PwPS0002` | `{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}` | `h1` of older password | Yes |
| `PwPU0000` | `{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}` | `h1` of user password | Yes |

- PwPS* rotate on each password change (history ring)
- PwPS* store h1 (single SHA-256, no salt) — easier to attack than SystemSupervisorPw
- Zeroing PwPS*/PwPU* from OS does NOT bypass the password prompt
- SystemSupervisorPw can only be changed via BIOS setup (F2) or flash

## Reading variables

Requires admin + `SeSystemEnvironmentPrivilege` (error 1314 = not elevated).
Use `tools/uefi_read_vars.ps1` or the C API `GetFirmwareEnvironmentVariableEx`.

## Cracking approach

1. Dump current hashes with `uefi_read_vars.ps1`
2. Edit `target_hashes` in `tools/odissrea.c` with the new hash(es)
3. Recompile: `clang -O3 -march=native -D_CRT_SECURE_NO_WARNINGS -o odissrea.exe odissrea.c`
4. Run: `odissrea.exe -b 6` (brute-force up to 6 chars) or `odissrea.exe wordlist.txt`
5. Both h1 (PwPS*) and stored (SystemSupervisorPw) are checked simultaneously
