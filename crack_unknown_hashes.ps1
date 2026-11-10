# Attacco hash sconosciuti da PwPS*/PwPU* originali
# Due hash target, due metodi: h1-only (PwPS) e double-SHA256+salt (SystemSupervisorPw)
# Uso: .\crack_unknown_hashes.ps1 [-WordlistFile path]

param([string]$WordlistFile)

$targets = @{
    '33796c56ca00fdee83ab4a3bb7d71fad7c4b0e0e90ce8c93670454c10ad0b72e' = 'PwPS0000/0001/PwPU0000 originale'
    'e1b41a7593243882ad8b46746d025df6722aba1b9fa93d2d82523db495cc80cf' = 'PwPS0002 originale (pre-test)'
}
$salt = [byte[]](,0xFF * 32)
$sha = [System.Security.Cryptography.SHA256]::Create()

function Digest([byte[]]$d){ $sha.ComputeHash($d) }
function Hx([byte[]]$d){ ($d | ForEach-Object { $_.ToString('x2') }) -join '' }

function Pad128([string]$pw){
    $raw = [Text.Encoding]::ASCII.GetBytes($pw)
    $buf = [byte[]]::new(128)
    if($raw.Length -gt 0){ [Array]::Copy($raw,0,$buf,0,[Math]::Min($raw.Length,128)) }
    $buf
}

# Verifica: h1(qwerty) deve essere noto
$h1q = Hx (Digest (Pad128 'qwerty'))
Write-Host "h1(qwerty) = $h1q"
if($targets.ContainsKey($h1q)){ Write-Host ">>> h1(qwerty) corrisponde a $($targets[$h1q])!" -Fore Green }

# Wordlist built-in: top password + pattern BIOS + keyboard + PIN
$builtin = @(
    'qwerty','password','123456','12345678','1234','admin','lenovo','root','test',
    '0000','00000000','1111','9999','1234567890','abc123','letmein','welcome',
    'master','dragon','monkey','shadow','sunshine','princess','football','charlie',
    'access','mustang','superman','batman','trustno1','iloveyou','whatever',
    'passw0rd','P@ssw0rd','Password1','passwd','pass','pass1234',
    'qwerty123','qwerty1','QWERTY','Qwerty','qwertyuiop',
    'asdfgh','zxcvbn','1q2w3e','1q2w3e4r','q1w2e3r4',
    'azerty','abcdef','abc','abcd1234',
    'Lenovo','LENOVO','lenovo1','ThinkPad','thinkpad','ideapad','IdeaPad',
    'bios','BIOS','setup','SETUP','supervisor','Supervisor',
    '','a','A','1','q','z','x',
    'default','factory','service','tech','debug','insyde','Insyde','INSYDE','h2o','H2O',
    'phoenix','Phoenix','PHOENIX','award','Award','ami','AMI',
    '111111','222222','123123','321321','654321','000000','999999',
    'computer','internet','samsung','honda','yamaha','toyota',
    'hello','h3lo!','test1','test123','guest','user','owner',
    'aaaaaa','aaaa','zzzz','qqqq'
)

# Carica wordlist esterna se fornita
$pwlist = $builtin
if($WordlistFile -and (Test-Path $WordlistFile)){
    $ext = Get-Content $WordlistFile -Encoding UTF8
    $pwlist = $builtin + $ext
    Write-Host "Wordlist: $($builtin.Count) built-in + $($ext.Count) da file = $($pwlist.Count) totali"
} else {
    Write-Host "Wordlist: $($pwlist.Count) built-in (usa -WordlistFile per estendere)"
}

$found = @{}
$tried = 0
$sw = [Diagnostics.Stopwatch]::StartNew()

foreach($pw in $pwlist){
    $h1 = Hx (Digest (Pad128 $pw))
    # Check h1-only (PwPS method)
    if($targets.ContainsKey($h1) -and -not $found[$h1]){
        Write-Host "MATCH h1-only: '$pw' -> $($targets[$h1])" -Fore Green
        $found[$h1] = "h1:$pw"
    }
    # Check double-SHA256+salt (SystemSupervisorPw method)
    $cat = [byte[]]::new(64)
    $h1b = Digest (Pad128 $pw)
    [Array]::Copy($h1b,0,$cat,0,32); [Array]::Copy($salt,0,$cat,32,32)
    $h2 = Hx (Digest $cat)
    if($targets.ContainsKey($h2) -and -not $found[$h2]){
        Write-Host "MATCH double-SHA256: '$pw' -> $($targets[$h2])" -Fore Green
        $found[$h2] = "h2:$pw"
    }
    $tried++
    if($found.Count -eq $targets.Count){ break }
}

$sw.Stop()
Write-Host "`nRisultato: $($found.Count)/$($targets.Count) trovati su $tried password in $($sw.Elapsed.TotalSeconds.ToString('F1'))s"
if($found.Count -lt $targets.Count){
    $missing = $targets.Keys | Where-Object { -not $found[$_] }
    foreach($h in $missing){ Write-Host "NON TROVATO: $($targets[$h]) = $h" -Fore Yellow }
    Write-Host "Suggerimento: scarica rockyou.txt e rilancia con -WordlistFile rockyou.txt"
}
