# Brute-force password supervisore BIOS InsydeH2O (SysPasswordDxe)
# Algoritmo ricostruito: stored = SHA256( SHA256(ascii_pw zero-padded 128) || 0xFF*32 )
# Uso: .\crack_syspassword.ps1  (modifica $target e $pwlist)

$target = 'FD780CB23B20DBDEE73E45682CF5AF08EF4FB042E1EE3CA6E63C049408207292'.ToLower()
$salt   = [byte[]](,0xFF * 32)   # region FDM G2 vergine; usa un dump SPI se inizializzata

$sha = [System.Security.Cryptography.SHA256]::Create()
function Digest([byte[]]$d){ $sha.ComputeHash($d) }
function Hx([byte[]]$d){ ($d | ForEach-Object { $_.ToString('x2') }) -join '' }

function TryPw([string]$pw){
  $raw = [Text.Encoding]::ASCII.GetBytes($pw)      # low-byte dei char UTF-16LE
  $buf = [byte[]]::new(128)                          # zero-padding a 128
  if($raw.Length -gt 0){ [Array]::Copy($raw,0,$buf,0,[Math]::Min($raw.Length,128)) }
  $h1  = Digest $buf
  $cat = [byte[]]::new(64)
  [Array]::Copy($h1,0,$cat,0,32); [Array]::Copy($salt,0,$cat,32,32)
  Hx (Digest $cat)
}

# Wordlist: sostituisci/estendi. Esempio minimo:
$pwlist = @('qwerty','123456','12345678','password','admin','lenovo','0000','00000000')

$found = $false
foreach($pw in $pwlist){
  if((TryPw $pw) -eq $target){ "MATCH: '$pw'"; $found = $true; break }
}
if(-not $found){ "nessun match su $($pwlist.Count) password" }
