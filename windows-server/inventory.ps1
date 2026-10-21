
$OutputFolder = ".\reports"

New-Item -ItemType Directory `
    -Path $OutputFolder `
    -Force | Out-Null

$Computer = Get-CimInstance Win32_ComputerSystem
$OS = Get-CimInstance Win32_OperatingSystem

$Report = [PSCustomObject]@{
    ComputerName = $Computer.Name
    Domain       = $Computer.Domain
    Manufacturer = $Computer.Manufacturer
    Model        = $Computer.Model
    OS           = $OS.Caption
    Version      = $OS.Version
    RAM_GB       = [math]::Round(
        $Computer.TotalPhysicalMemory / 1GB, 2
    )
    Date         = Get-Date
}

$Report | Format-List

$Report | Export-Csv `
    -Path "$OutputFolder\server-inventory.csv" `
    -NoTypeInformation `
    -Encoding UTF8

Write-Host "Rapport cree dans $OutputFolder"
