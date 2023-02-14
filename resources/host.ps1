Set-Location C:\Resource
C:\Windows\System32\cmd.exe /c dir
Copy-Item ngrok.exe C:\Windows\ngrok.exe
ngrok.exe config add-authtoken 2LilPL08nTyX16b1Pc0MKFYOKor_79i2hV2J2xjhdxk1PGeaS
Start-Process Powershell -ArgumentList '-Noexit -Command "ngrok.exe tcp 3389 --region ap"'
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 1
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
C:\Windows\System32\cmd.exe /c timeout -t 5 /nobreak
