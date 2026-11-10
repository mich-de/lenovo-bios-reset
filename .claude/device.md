# Device Info

## Hardware

- **Model**: Lenovo IdeaPad Slim 5 14Q8X9
- **Machine type**: 83HL
- **Model**: 83HL
- **SoC**: Snapdragon X Plus X1P42100 — 8 cores Oryon @ 3.4 GHz, Adreno X1-45 GPU, Hexagon NPU
- **RAM**: 16 GB LPDDR5x
- **Storage**: 512 GB NVMe SSD
- **Display**: 14" 1920×1200 @ 60 Hz

## Firmware

- **BIOS**: InsydeH2O, version PUCN55WW
- **Architecture**: AArch64 (ARM64) — NOT x86
- **BIOS update**: `bios/pucn55ww.exe` (capsule, ~13 MB)

## OS

- **Windows 11 Home ARM64** (build 26300)
- **UAC disabled** — elevation is immediate, no prompt
- **Keyboard layout**: ES Spanish (BIOS uses US-QWERTY)

## Firmware interfaces

- **UEFI variables**: accessible via `GetFirmwareEnvironmentVariableEx` (admin + SeSystemEnvironmentPrivilege)
- **Lenovo WMI**: IdeaPad GAMEZONE (GMZN) interface only — NO ThinkPad-style `Lenovo_SetBiosPassword` API
- **Thermal sensors**: MSAcpi_ThermalZoneTemperature works (CPU ~47°C under load, skin ~42°C)
- **Compal WMI**: `root/Compal` namespace exists but methods fail ("oggetto non valido") on ARM64
- **Password change**: BIOS setup only (F2 → Security → Supervisor Password). No programmatic way from OS.
