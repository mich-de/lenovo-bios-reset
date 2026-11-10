# Tools Reference

## OdissREA v2.0 (`tools/odissrea.c`)

Brute-force and wordlist cracker for InsydeH2O BIOS passwords.
ARM64 native with SHA-256 hardware acceleration + multi-threading.

### Usage

```bash
odissrea.exe                    # brute-force 4 char, auto threads
odissrea.exe -b 6               # brute-force up to 6 chars
odissrea.exe -b 6 -t 8          # 6 chars, 8 threads
odissrea.exe wordlist.txt       # wordlist attack
odissrea.exe wordlist.txt -b 5  # wordlist + brute-force fallback
```

### Compile

```bash
clang -O3 -march=native -D_CRT_SECURE_NO_WARNINGS -o odissrea.exe odissrea.c
```

Requires LLVM/Clang with ARM crypto support. Installed at `C:\Program Files\LLVM\bin\clang.exe`.

### Changing targets

Edit `target_hashes` array in main(). Each entry: `{hex_hash, label}`, terminated by `{NULL, NULL}`.
Change `g_salt` if the device has initialized FDM regions (not 0xFF).

### Performance (Snapdragon X Plus, 8 cores)

| Keyspace | Size | Time |
|----------|------|------|
| 4 char ASCII | 83M | <2 sec |
| 5 char ASCII | 7.9B | ~2.6 min |
| 6 char ASCII | 735B | ~4 hours |
| 6 char alnum | 2.2B | ~44 sec |
| 8 char alnum | 2.8T | ~15 hours |

## uefi_read_vars.ps1

Reads UEFI password variables (read-only). Requires admin PowerShell.
Output: hex dump of each variable to console and file.

## reset_bios_password.ps1

Backs up and zeroes PwPS*/PwPU* variables. Does NOT clear SystemSupervisorPw (write-locked).
Zeroing alone does not bypass the password prompt.

## odissrea_wordlist.ps1

PowerShell wordlist cracker. Slower than C version but no compilation needed.
Checks both h1 and double-SHA256 for each candidate.

## odissrea_lite.ps1

Original simple brute-force in PowerShell. ~5-10K hash/sec. Proof of concept only.
