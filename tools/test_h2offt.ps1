$h2offt = "$PSScriptRoot\..\firmware\bios_ext\H2OFFT-Wx64.exe"
try {
    $proc = Start-Process $h2offt -ArgumentList "-h" -PassThru -Wait -NoNewWindow -ErrorAction Stop
    "Exit code: $($proc.ExitCode)"
} catch {
    "Error: $_"
}
