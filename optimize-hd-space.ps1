wsl --shutdown
"Try optimizing ${Env:LocalAppData}\Docker\wsl\data\ext4.vhdx"
Optimize-VHD -Path "${Env:LocalAppData}\Docker\wsl\data\ext4.vhdx" -Mode Full