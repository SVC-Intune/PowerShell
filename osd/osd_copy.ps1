$outfl = 'C:\SVC\__intune'
if (-not (Test-Path -Path $outfl)) {mkdir $outfl}

irm https://raw.githubusercontent.com/SVC-Intune/PowerShell/refs/heads/main/osd/GetHash.bat -OutFile $outfl\GetHash.bat | iex

irm https://raw.githubusercontent.com/SVC-Intune/PowerShell/refs/heads/main/osd/Get-WindowsAutoPilotInfo.ps1 -OutFile $outfl\Get-WindowsAutoPilotInfo.ps1

irm https://raw.githubusercontent.com/SVC-Intune/PowerShell/refs/heads/main/osd/Get-IntuneManagementExtensionDiagnostics.ps1 -OutFile $outfl\Get-IntuneManagementExtensionDiagnostics.ps1
