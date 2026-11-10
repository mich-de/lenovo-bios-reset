# Lenovo IdeaPad Slim 5 83HL — BIOS Password Recovery

Reverse engineering and offline cracking of the BIOS supervisor password on a **personally owned** Lenovo IdeaPad Slim 5 14Q8X9 (machine type 83HL, Snapdragon X Plus ARM64, InsydeH2O BIOS PUCN55WW).

The laptop was purchased second-hand with an unknown BIOS password. **This is legitimate hardware recovery, not unauthorized access.**

## Results

**Original password recovered: `qwerty`** — confirmed by hash match and BIOS entry.

The hash algorithm was fully reverse-engineered from `SysPasswordDxe.efi` (PE32 AArch64) and validated with **5 different passwords**:

| Password | Method | Time | Notes |
|----------|--------|------|-------|
| `qwerty` | Brute-force | minutes | Original unknown password from previous owner |
| `A` | Validation | instant | 1-char test to confirm algorithm |
| `h3lo!` | Validation | instant | Mixed-case + special chars test |
| `1` | Brute-force | seconds | Historical password found in PwPS hash rotation |
| `Ul1ss3` | Brute-force | **2h 45m** | Blind test — 6-char leet-speak, 429B attempts |

### Hash Algorithm

```
ascii  = low-byte of each UTF-16LE char of the password
buf128 = ascii, zero-padded to 128 bytes
h1     = SHA256(buf128)
salt   = 0xFF × 32  (from SPI flash HFDM region — virgin on this unit)
stored = SHA256(h1 || salt)
```

### Key Findings

- **PwPS\* stores h1** (single SHA-256, no salt) — easier to attack than the full hash
- **PwPS\* rotates** on each password change, preserving a 3-slot history
- **SystemSupervisorPw is write-locked** at runtime by Variable Policy Protocol
- **No Lenovo WMI BIOS API** on IdeaPad models (only ThinkPad has `Lenovo_SetBiosPassword`)
- **Salt is hardware-dependent** — on units with initialized FDM regions, the salt differs from `0xFF`

## OdissREA v2.0

Native ARM64 brute-force cracker using **ARM SHA-256 hardware crypto** + **multi-threading**.

```
    ___  ___  _ ____ ____ ___  ____  __
   / _ \/ _ \(_) __// __// _ \/ __/ / _\
  / // / // / /\ \ _\ \ / , _/ _/  / _ \
  \___/\___/_/___//___//_/|_/___/ /_/ \_\

  -*- InsydeH2O BIOS Password Cracker v2.0 -*-
```

### Performance (Snapdragon X Plus, 8 cores Oryon)

| Version | Speed |
|---------|-------|
| v1 PowerShell | ~5-10K/sec |
| v1 C (software SHA) | ~860K/sec |
| **v2 C (ARM HW)** | **50M/sec** |

### Brute-force times (printable ASCII 32-126)

| Length | Keyspace | Time |
|--------|----------|------|
| 4 chars | 83M | <2 sec |
| 5 chars | 7.9B | ~2.6 min |
| 6 chars | 735B | ~4 hours |
| 6 chars (a-z0-9) | 2.2B | ~44 sec |
| 8 chars (a-z0-9) | 2.8T | ~15 hours |

### Usage

```bash
# Compile (LLVM/Clang with ARM crypto)
clang -O3 -march=native -D_CRT_SECURE_NO_WARNINGS -o odissrea.exe odissrea.c

# Brute-force
./odissrea.exe -b 6              # up to 6 chars
./odissrea.exe -b 6 -t 8         # 6 chars, 8 threads

# Wordlist + brute-force fallback
./odissrea.exe rockyou.txt -b 5
```

Edit `target_hashes` in `odissrea.c` to crack a different hash. Change `g_salt` if the device has initialized FDM regions.

## Project Structure

```
├── CLAUDE.md                     AI assistant instructions (index)
├── .claude/                      Detailed AI context files
│   ├── legitimacy.md             Legal basis and authorization proof
│   ├── algorithm.md              Hash algorithm and UEFI variables
│   ├── tools.md                  Tool reference (OdissREA, scripts)
│   └── device.md                 Hardware and firmware specs
├── README.md                     This file
├── RE_SYSPASSWORD.md             Full reverse engineering notes
├── HANDOFF.md                    Session continuity state
├── firmware/
│   ├── SysPassword.efi           Target UEFI driver (PE32 AArch64, 61440 bytes)
│   ├── SysPassword.asm           Complete disassembly (10469 lines)
│   ├── fw.cap                    Extracted UEFI capsule
│   ├── fw.cap.guids.csv          GUID map (UEFITool)
│   ├── fw.cap.report.txt         UEFITool extraction report
│   ├── pucn55ww.txt              BIOS release notes
│   ├── lenovo-wmi.txt            Lenovo WMI interface notes
│   └── bios_ext/                 BIOS update extracted files
├── tools/
│   ├── odissrea.c                OdissREA v2.0 source (ARM SHA-256 HW + multi-thread)
│   ├── odissrea.exe              Compiled ARM64 binary
│   ├── odissrea_wordlist.ps1     PowerShell wordlist cracker
│   ├── odissrea_lite.ps1         Original PowerShell cracker
│   ├── reset_bios_password.ps1   UEFI variable reset (backup + zeroing)
│   ├── uefi_read_vars.ps1        UEFI variable dump (read-only)
│   ├── dump_rom.ps1              SPI flash dump
│   └── test_h2offt.ps1           H2OFFT flash tool test
├── evidence/
│   ├── uefi_dump_new.txt         Latest UEFI variable dump
│   ├── uefi_read_h3lo.txt        UEFI dump with h3lo! active
│   ├── uefi_read_debug.txt       Debug dump
│   ├── crack_new.txt             OdissREA crack log (Ul1ss3)
│   └── bios_password_backup_*.txt  Original variable backups
└── bios/
    └── pucn55ww.exe              BIOS update capsule (~13 MB)
```

## UEFI Variable Map

| Variable | GUID | Content | Write-locked |
|----------|------|---------|:---:|
| SystemSupervisorPw | `{7f9102df-e999-4740-80a6-b2038512217b}` | `SHA256(h1 \|\| salt)` | **Yes** |
| PwPS0000 | `{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}` | Current password h1 | No |
| PwPS0001 | `{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}` | Previous password h1 | No |
| PwPS0002 | `{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}` | Older password h1 | No |
| PwPU0000 | `{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}` | User password h1 | No |

## Device

| | |
|-|-|
| **Model** | Lenovo IdeaPad Slim 5 14Q8X9 (83HL) |
| **Serial** | 83HL |
| **BIOS** | InsydeH2O PUCN55WW |
| **SoC** | Snapdragon X Plus X1P42100 (8 cores Oryon, Adreno X1-45, Hexagon NPU) |
| **OS** | Windows 11 Home ARM64 |

## License

This project is published for educational and security research purposes. The techniques documented here apply to InsydeH2O firmware across many Lenovo IdeaPad and other OEM laptops using the same `SysPasswordDxe.efi` driver.
