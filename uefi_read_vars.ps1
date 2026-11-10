#Requires -RunAsAdministrator
# Legge le variabili UEFI della password BIOS (sola lettura, non modifica nulla)

Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
public static class UefiRead {
    [DllImport("kernel32.dll", SetLastError=true)]
    public static extern uint GetFirmwareEnvironmentVariableEx(
        string lpName, string lpGuid, byte[] pBuffer, uint nSize, out uint attr);
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
'@

if (-not [UefiRead]::EnablePrivilege()) {
    Write-Host "ERRORE: privilegio UEFI non abilitato" -ForegroundColor Red; exit 1
}
Write-Host "Privilegio firmware OK`n" -ForegroundColor Green

$vars = @(
    @{N="SystemSupervisorPw"; G="{7f9102df-e999-4740-80a6-b2038512217b}"},
    @{N="PwPS0000"; G="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}"},
    @{N="PwPS0001"; G="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}"},
    @{N="PwPS0002"; G="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}"},
    @{N="PwPU0000"; G="{e0ab6c1f-030c-4fcd-b155-7a11d6a4ce1a}"}
)

$out = @()
foreach ($v in $vars) {
    $buf = New-Object byte[] 8192
    $attr = [uint32]0
    $sz = [UefiRead]::GetFirmwareEnvironmentVariableEx($v.N, $v.G, $buf, 8192, [ref]$attr)
    $err = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
    if ($sz -gt 0) {
        $hex = ($buf[0..($sz-1)] | ForEach-Object { $_.ToString("X2") }) -join ""
        $line = "$($v.N): $sz bytes = $hex"
        Write-Host $line -ForegroundColor Cyan
        $out += $line
    } else {
        $line = "$($v.N): NOT FOUND (err=$err)"
        Write-Host $line -ForegroundColor Yellow
        $out += $line
    }
}

$outFile = "$PSScriptRoot\uefi_read_h3lo.txt"
$out | Out-File $outFile -Encoding UTF8
Write-Host "`nSalvato in: $outFile" -ForegroundColor Green
