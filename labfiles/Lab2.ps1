# Looking below is cheating, don't be that person





















































































































































































































































































































































































































































































































































































































































































































































# Lab 4

[void] (New-Service -Name "Avast" -BinaryPathName '"C:\WINDOWS\System32\wcrmgr.exe"' -StartupType "Automatic")
[void] (New-Service -Name "GaUpdate" -BinaryPathName '"C:\WINDOWS\System32\cmd.exe"' -StartupType "Automatic")
[void] (New-Service -Name "UpdatesWindows" -BinaryPathName '"C:\WINDOWS\System32\.exe"' -StartupType "Automatic")

[void] (Takeown /F "C:\Program Files\Windows Media Player\wmpnetwk.exe")
[void] (icacls "C:\Program Files\Windows Media Player\wmpnetwk.exe" /grant 'Teacher:(F)')

[void] (Takeown /F "C:\Program Files\Google\Update\GoogleUpdate.exe")
[void] (icacls "C:\Program Files\Google\Update\GoogleUpdate.exe" /grant 'Teacher:(F)')

# -----

# Lab 5

# C:\Program Files\OpenSSH\bin\netutils.dll - Target DLL
[void] (Stop-Service -Force -Name OpenSSHd)
[void] (copy "c:\vagrant\tools\openssh.exe" "C:\Program Files\OpenSSH\bin\cygrunsrv.exe")
[void] ($env:Path += ";C:\Program Files\OpenOffice 4\program")
[void] (icacls "C:\Program Files\OpenOffice 4\program" /grant "Teacher:(F)")

# Lab 6

# Steam




