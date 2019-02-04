<#
    ZabbixWPMDisk-LLD.ps1
    Updated: 2019-02-04
    Author: Justin Doles
    Requires: None
    Description: Performs a low level discovery for physical disk performance counters
#>
$index = 1
$drives = Get-WmiObject win32_PerfFormattedData_PerfDisk_PhysicalDisk -Filter "Name != '_Total'" | Select-Object Name
$output = "{`"data`": [`n"

foreach ($drive in $drives) {
    if ($index -lt $drives.Count) {
        $output += "{ `"{#DISKNUMLET}`": `"" + ($drive.Name) + "`" },"
    } else {
        $output += "{ `"{#DISKNUMLET}`": `"" + ($drive.Name) + "`" }"
    }
    $index++
}

$output += "`n]}"
Write-Host $output