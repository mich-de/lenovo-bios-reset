#Requires -RunAsAdministrator
# Reset BIOS Password - Lenovo IdeaPad Slim 5 83HL (InsydeH2O PUCN55WW)
# Azzera le variabili UEFI che contengono la password BIOS.
# DEVE essere eseguito come amministratore.
# BACKUP automatico prima di scrivere.

param(
    [switch]$Force  # Salta la conferma interattiva
)

Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public static class UefiFw {
    [DllImport("kernel32.dll", SetLastError=true)]
    public static extern uint GetFirmwareEnvironmentVariableEx(
        string lpName, string lpGuid, byte[] pBuffer, uint nSize, out uint attr);

    [DllImport("kernel32.dll", SetLastError=true)]
    [return: MarshalAs(UnmanagedType.Bool)]
    public static extern bool SetFirmwareEnvironmentVariableEx(
        string lpName, string lpGuid, byte[] pValue, uint nSize, uint attr);

    [DllImport("advapi32.dll", SetLastError=true)]
    public static extern bool AdjustTokenPrivileges(IntPtr h, bool d, ref TP n, uint b, IntPtr p, IntPtr r);
    [DllImport("advapi32.dll", SetLastError=true)]
    public static extern bool OpenProcessToken(IntPtr p, uint a, out IntPtr t);
    [DllImport("advapi32.dll", SetLastError=true)]
    public static extern bool LookupPrivilegeValue(string s, string n, out LUID l);
    [DllImport("kernel32.dll")]
    public static extern IntPtr GetCurrentProcess();

    [StructLayout(LayoutKind.Sequential)] public struct LUID { public uint Lo; public int Hi; }
    [StructLayout(LayoutKind.Sequential)] public struct LA { public LUID L; public uint A; }
    [StructLayout(LayoutKind.Sequential)] public struct TP { public uint C; public LA P; }

    public static bool EnablePrivilege() {
        IntPtr t;
        if (!OpenProcessToken(GetCurrentProcess(), 0x28, out t)) return false;
        LUID l;
        if (!LookupPrivilegeValue(null, "SeSystemEnvironmentPrivilege", out l)) return false;
        TP tp = new TP(); tp.C = 1; tp.P.L = l; tp.P.A = 2;
        AdjustTokenPrivileges(t, false, ref tp, 0, IntPtr.Zero, IntPtr.Zero);
        return Marshal.GetLastWin32Error() == 0;
    }
}
"@

# --- Abilita privilegio ---
$privOk = [UefiFw]::EnablePrivilege()
if (-not $privOk) {
    Write-Host "ERRORE: impossibile abilitare SeSystemEnvironmentPrivilege. Esegui come amministratore." -ForegroundColor Red
    exit 1
}
Write-Host "Privilegio firmware abilitato." -ForegroundColor Green

# --- Variabili da azzerare ---
$targets = @(
    @{ Name="SystemSupervisorPw"; Guid="{7f9102df-e999-4740-80a6-b2038512217b}" },
    @{ Name="PwPS0000"; Guid="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}" },
    @{ Name="PwPS0001"; Guid="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}" },
    @{ Name="PwPS0002"; Guid="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}" },
    @{ Name="PwPU0000"; Guid="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}" },
    @{ Name="PwPSHistory"; Guid="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}" },
    @{ Name="PwPUHistory"; Guid="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}" },
    @{ Name="PwPST"; Guid="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}" }
)

# --- Fase 1: BACKUP ---
$backupFile = "$PSScriptRoot\bios_password_backup_$(Get-Date -Format 'yyyyMMdd_HHmmss').txt"
$backupLines = @("# BIOS Password Variables Backup", "# $(Get-Date)", "")

Write-Host "`n=== FASE 1: BACKUP ===" -ForegroundColor Cyan
foreach ($t in $targets) {
    $buf = New-Object byte[] 8192
    $attr = [uint32]0
    $sz = [UefiFw]::GetFirmwareEnvironmentVariableEx($t.Name, $t.Guid, $buf, 8192, [ref]$attr)
    $err = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()

    if ($sz -gt 0) {
        $hex = ($buf[0..($sz-1)] | ForEach-Object { $_.ToString("X2") }) -join ""
        $backupLines += "$($t.Name) $($t.Guid) size=$sz attr=$attr hex=$hex"
        Write-Host "  $($t.Name): $sz byte letti" -ForegroundColor Gray
    } else {
        $backupLines += "$($t.Name) $($t.Guid) NOT_FOUND err=$err"
        Write-Host "  $($t.Name): non trovata (err=$err)" -ForegroundColor Yellow
    }
}

$backupLines | Out-File $backupFile -Encoding UTF8
Write-Host "`nBackup salvato in: $backupFile" -ForegroundColor Green

# --- Fase 2: CONFERMA ---
if (-not $Force) {
    Write-Host "`n=== ATTENZIONE ===" -ForegroundColor Red
    Write-Host "Stai per AZZERARE le variabili UEFI della password BIOS." -ForegroundColor Red
    Write-Host "Al riavvio il BIOS non dovrebbe piu' chiedere la password." -ForegroundColor Yellow
    Write-Host "Rischio: se il BIOS valida il formato, potrebbe rifiutare o causare problemi." -ForegroundColor Yellow
    Write-Host "Il backup e' stato salvato nel file sopra indicato." -ForegroundColor Yellow
    Write-Host ""
    $risposta = Read-Host "Digitare SI per procedere, qualsiasi altro tasto per annullare"
    if ($risposta -ne "SI") {
        Write-Host "Operazione annullata." -ForegroundColor Yellow
        exit 0
    }
}

# --- Fase 3: AZZERAMENTO ---
Write-Host "`n=== FASE 2: AZZERAMENTO ===" -ForegroundColor Cyan
$success = 0
$fail = 0

foreach ($t in $targets) {
    # Leggi dimensione attuale
    $buf = New-Object byte[] 8192
    $attr = [uint32]0
    $sz = [UefiFw]::GetFirmwareEnvironmentVariableEx($t.Name, $t.Guid, $buf, 8192, [ref]$attr)

    if ($sz -gt 0) {
        # Scrivi zeri della stessa dimensione, stessi attributi
        $zeros = New-Object byte[] $sz
        $result = [UefiFw]::SetFirmwareEnvironmentVariableEx($t.Name, $t.Guid, $zeros, $sz, $attr)
        $err = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()

        if ($result) {
            Write-Host "  $($t.Name): AZZERATO ($sz byte)" -ForegroundColor Green
            $success++
        } else {
            Write-Host "  $($t.Name): FALLITO (err=$err)" -ForegroundColor Red
            $fail++
        }
    } else {
        Write-Host "  $($t.Name): saltato (non presente)" -ForegroundColor Gray
    }
}

# --- Fase 4: VERIFICA ---
Write-Host "`n=== FASE 3: VERIFICA ===" -ForegroundColor Cyan
foreach ($t in $targets) {
    $buf = New-Object byte[] 8192
    $attr = [uint32]0
    $sz = [UefiFw]::GetFirmwareEnvironmentVariableEx($t.Name, $t.Guid, $buf, 8192, [ref]$attr)
    if ($sz -gt 0) {
        $allZero = ($buf[0..($sz-1)] | Where-Object { $_ -ne 0 }).Count -eq 0
        if ($allZero) {
            Write-Host "  $($t.Name): OK (tutto zero)" -ForegroundColor Green
        } else {
            $hex = ($buf[0..([Math]::Min($sz-1, 15))] | ForEach-Object { $_.ToString("X2") }) -join " "
            Write-Host "  $($t.Name): ATTENZIONE non azzerato! hex=$hex" -ForegroundColor Red
        }
    }
}

Write-Host "`n=== RISULTATO ===" -ForegroundColor Cyan
Write-Host "Azzerati: $success, Falliti: $fail" -ForegroundColor $(if ($fail -eq 0) { "Green" } else { "Red" })
if ($fail -eq 0 -and $success -gt 0) {
    Write-Host "`nRiavvia il laptop per verificare che la password BIOS non venga piu' richiesta." -ForegroundColor Green
    Write-Host "Se qualcosa va storto, il backup e' in: $backupFile" -ForegroundColor Yellow
} elseif ($fail -gt 0) {
    Write-Host "`nAlcune variabili non sono state azzerate. Le variabili potrebbero essere protette." -ForegroundColor Red
    Write-Host "Alternativa: contattare Lenovo al 02 30310000 con serial 83HL." -ForegroundColor Yellow
}
