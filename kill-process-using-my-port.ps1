param(
    [int]$port,
    [bool]$isudp
)
try{
    if($isudp) {
        Get-Process -Id (Get-NetUDPEndpoint -LocalPort $port).OwningProcess | Stop-Process
    }else{
        Get-Process -Id (Get-NetTCPConnection -LocalPort $port).OwningProcess | Stop-Process
    }
    "Killed process using port $port"
}catch{
    "Unable to kill process using port $port"
}
