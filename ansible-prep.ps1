winrm quickconfig -force

winrm set winrm/config/service '@{AllowUnencrypted="true"}'

winrm set winrm/config/service/auth '@{Basic="true"}'

Enable-PSRemoting -Force

New-NetFirewallRule -Name "WinRM HTTP-In" -DisplayName "WinRM HTTPS-In" -Protocol TCP -LocalPort 5985 -Action Allow

Set-Item -Path WSMan:\localhost\service\Auth\Basic -Value $true

Set-Item -Path WSMan:\localhost\service\AllowUnencrypted -Value $true

Start-Service WinRM