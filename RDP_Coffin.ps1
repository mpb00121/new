Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "@#coffin123456" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://raw.githubusercontent.com/c9ffin/rdpw/main/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
Start-Service -Name audiosrv
cmd /c echo ./ngrok.exe authtoken "1t0jEMsB9IUnoMBUsLQuxd041Zn_4E3vJo3bhUCm8C7Et59Nr" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
 Write-Host "Visit: https://dashboard.ngrok.com/endpoints/status to get NGROK IP"
.\a.ps1
