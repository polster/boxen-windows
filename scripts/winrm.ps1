$ErrorActionPreference = "Stop"

Write-Host "Enabling WinRM"

winrm quickconfig -q
winrm quickconfig -transport:http
winrm set winrm/config/client/auth '@{Basic="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/listener?Address=*+Transport=HTTP '@{Port="5985"}'

netsh advfirewall firewall set rule group="remote administration" new enable=yes
netsh firewall add portopening TCP 5985 "Port 5985"
net stop winrm
sc.exe config winrm start= auto
net start winrm
