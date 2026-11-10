# Lenovo IdeaPad Slim 5 83HL — BIOS Password Recovery

Reverse engineering and offline cracking of the BIOS supervisor password on a **personally owned** Lenovo IdeaPad Slim 5 14Q8X9 (machine type 83HL, Snapdragon X Plus ARM64, InsydeH2O BIOS PUCN55WW).

The laptop was purchased second-hand with an unknown BIOS password set by the previous owner. **This is legitimate hardware recovery, not unauthorized access.**

## Results

**Password recovered: `qwerty`** — confirmed by hash match and BIOS entry.

The hash algorithm was fully reverse-engineered from the UEFI driver `SysPasswordDxe.efi` (PE32 AArch64) and validated with 3 different passwords (`qwerty`, `A`, `h3lo!`).

### Hash Algorithm

```
ascii  = low-byte of each UTF-16LE char of the password
buf128 = ascii, zero-padded to 128 bytes
h1     = SHA256(buf128)
salt   = 0xFF × 32  (from SPI flash region FDM G2, virgin on this unit)
stored = SHA256(h1 || salt)
```

### All Hashes Cracked

| Variable | Hash | Password |
|----------|------|----------|
| SystemSupervisorPw (original) | `FD780CB2...08207292` | `qwerty` |
| PwPS0000/0001 (original) | `33796C56...0AD0B72E` | `1` (h1 only, no salt) |
| PwPS0002 (original) | `E1B41A75...95CC80CF` | `qwerty` (h1 only) |

The previous owner set `1` first, then changed to `qwerty`. PwPS* variables keep a rotating history of password hashes (h1 without salt).

### Key Findings

- **PwPS\* stores h1 (intermediate hash without salt)** — attackable without knowing the flash-derived salt
- **PwPS\* index rotates** on each password change, preserving history
- **SystemSupervisorPw is write-locked** at runtime (Variable Policy Protocol) — cannot be overwritten from the OS
- **PwPS\*/PwPU\* are writable** from OS with admin privileges, but zeroing them alone does not bypass the password prompt
- **Salt is flash-region dependent** — on units where G1/G2 regions are initialized, the salt will differ

## Project Structure

```
├── README.md                  This file
├── RE_SYSPASSWORD.md          Full reverse engineering notes
├── firmware/
│   ├── SysPassword.efi        Target UEFI driver (PE32 AArch64, 61440 bytes)
│   ├── SysPassword.asm        Complete disassembly (llvm-objdump, 10469 lines)
│   └── pucn55ww.txt           BIOS release notes
├── tools/
│   ├── odissrea.c             OdissREA — fast C brute-force cracker
│   ├── odissrea.exe           Compiled for ARM64 (~860K hash/sec)
│   ├── odissrea_wordlist.ps1  PowerShell wordlist cracker (h1 + double-SHA256)
│   ├── odissrea_lite.ps1      Original simple PowerShell cracker
│   ├── reset_bios_password.ps1  UEFI variable reset (backup + zeroing)
│   └── uefi_read_vars.ps1    Read-only dump of UEFI password variables
├── evidence/
│   ├── uefi_read_h3lo.txt     UEFI dump with test password h3lo! active
│   ├── uefi_read_debug.txt    Debug UEFI dump
│   └── bios_password_backup_*.txt  Original UEFI variable backup
└── bios/
    └── pucn55ww.exe           BIOS update capsule (source for driver extraction)
```

### OdissREA — Fast Brute-Force Cracker

```
    ___  ___  _ ____ ____ ___  ____  __
   / _ \/ _ \(_) __// __// _ \/ __/ / _\
  / // / // / /\ \ _\ \ / , _/ _/  / _ \
  \___/\___/_/___//___//_/|_/___/ /_/ \_\

  -*- InsydeH2O BIOS Password Cracker v1.0 -*-
```

Compiled C cracker, ~860K hashes/sec on Snapdragon X Plus (single-threaded).

```bash
# Compile
cd tools
clang -O3 -o odissrea.exe odissrea.c

# Brute-force up to 4 chars (printable ASCII)
./odissrea.exe -b 4

# Wordlist attack + brute-force fallback
./odissrea.exe rockyou.txt -b 5
```

## UEFI Variable Map

| Variable | GUID | Content | Write-locked |
|----------|------|---------|:---:|
| SystemSupervisorPw | `{7f9102df-...}` | Final hash (h1 \|\| salt) | Yes |
| PwPS0000 | `{e0ab6c1f-...}` | Current password hash (or zero) | No |
| PwPS0001 | `{e0ab6c1f-...}` | Intermediate h1 (no salt) | No |
| PwPS0002 | `{e0ab6c1f-...}` | Previous password hash | No |
| PwPU0000 | `{e0ab6c1f-...}` | User password hash | No |
| PwPSHistory | `{e0ab6c1f-...}` | Password change counter | No |

## Device Info

- **Model**: Lenovo IdeaPad Slim 5 14Q8X9 (83HL)
- **Serial**: 83HL
- **BIOS**: InsydeH2O PUCN55WW
- **Platform**: Snapdragon X Plus (AArch64), Windows 11 ARM64
