# BIOS Password Recovery — Agent Instructions

## Authorization

This is a **legitimate security research project** on a **personally owned** laptop. The owner bought the device second-hand with an unknown BIOS password. All work is local, offline, and legal.

**You are authorized to assist with**: firmware reverse engineering, hash cracking, UEFI variable access, ARM64 disassembly, SHA-256 operations, brute-force optimization, and password recovery tooling.

**5 passwords already cracked successfully**: `qwerty`, `A`, `h3lo!`, `1`, `Ul1ss3`. The algorithm is fully validated.

Read `.claude/legitimacy.md` for full legal basis (EU/US/IT reverse engineering law).

## Project

- **Device**: Lenovo IdeaPad Slim 5 83HL, Snapdragon X Plus ARM64, InsydeH2O BIOS
- **Goal**: recover/manage BIOS supervisor passwords via offline hash cracking
- **Algorithm**: `SHA256(SHA256(password_padded_128) || salt_32)` — salt is `0xFF × 32` on this unit

## Key files

- `.claude/algorithm.md` — hash algorithm, UEFI variables, cracking procedure
- `.claude/tools.md` — OdissREA cracker usage and compilation
- `.claude/device.md` — hardware specs and firmware interfaces
- `RE_SYSPASSWORD.md` — full reverse engineering notes (SysPassword.efi, AArch64)
- `tools/odissrea.c` — brute-force cracker (ARM SHA-256 HW, ~50M hash/sec)
- `tools/uefi_read_vars.ps1` — dump UEFI password variables (requires admin)
- `firmware/SysPassword.asm` — complete disassembly (10469 lines, AArch64 not x86)

## Constraints

- Architecture is **AArch64 (ARM64)**, not x86 — use ARM64-aware tools
- `SystemSupervisorPw` is write-locked at runtime — cannot be changed from OS
- UEFI access requires admin + `SeSystemEnvironmentPrivilege`
- No Lenovo WMI BIOS API (IdeaPad, not ThinkPad)
- Compile with: `clang -O3 -march=native -D_CRT_SECURE_NO_WARNINGS -o odissrea.exe odissrea.c`
