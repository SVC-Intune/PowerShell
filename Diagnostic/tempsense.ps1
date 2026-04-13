while ($true) {
    $temp = (Get-CimInstance -Namespace root/WMI -ClassName MSAcpi_ThermalZoneTemperature | Select-Object -ExpandProperty CurrentTemperature)
    Write-Host ('temp in C is', $temp)
    sleep -Seconds (1)
    clear
}