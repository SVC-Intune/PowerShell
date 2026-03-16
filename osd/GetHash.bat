::https://www.thelazyadministrator.com/2020/01/27/get-a-new-computers-auto-pilot-hash-without-going-through-the-out-of-box-experience-oobe/
@ECHO OFF
echo Enabling WinRM
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command Enable-PSRemoting -SkipNetworkProfileCheck -Force
echo Gathering AutoPilot Hash
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command .\Get-WindowsAutoPilotInfo.ps1 -GroupTag Shared -ComputerName $env:computername -OutputFile compHash.csv -append
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command .\Get-WindowsAutoPilotInfo.ps1 -GroupTag Shared -ComputerName $env:computername -OutputFile C:\CMA\compHash.csv -append
echo Done!
Echo Turn off Edge First Run
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Edge" /v HideFirstRunExperience /t REG_DWORD /d 1 /f
echo Upload the Autopilot Hash into Intune.microsoft.com
Start microsoft-edge:"https://intune.microsoft.com"
Start microsoft-edge:https://intune.microsoft.com
Start msedge
pause

shutdown /r /t 10