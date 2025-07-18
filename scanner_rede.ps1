# Monitoramento de Hosts na Rede - PowerShell
$subrede = "192.168.1"
$inicio = 1
$fim = 254

Write-Host "Verificando disponibilidade na subrede $subrede.0/24..." -ForegroundColor Cyan

for ($i = $inicio; $i -le $fim; $i++) {
    $ip = "$subrede.$i"
    $ping = Test-Connection -ComputerName $ip -Count 1 -Quiet
    if ($ping) {
        Write-Host "$ip está ONLINE" -ForegroundColor Green
    } else {
        Write-Host "$ip está OFFLINE" -ForegroundColor Red
    }
}