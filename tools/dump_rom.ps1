$h2offt = "firmware\bios_ext\H2OFFT-Wx64.exe"
Set-Location "D:\bios_tmp"
& $h2offt -g -s 2>&1 | Out-File "D:\bios_tmp\h2offt_log.txt" -Encoding UTF8
Get-ChildItem "D:\bios_tmp" | ForEach-Object { "$($_.Name) $($_.Length)" } | Out-File "D:\bios_tmp\h2offt_files.txt" -Encoding UTF8
