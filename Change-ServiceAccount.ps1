$var = Get-ChildItem env:
Write-Output $var
Write-Output "---------"
Invoke-Expression "$NTRightsInstallSource +r SeServiceLogonRight -u $serviceAccount"
$service = Get-WMIObject -ComputerName $hostname -namespace "root\cimv2" -class Win32_Service -Filter "Name=$service"
Write-Output $service
$service.change($null,$null,$null,$null,$null,$null,$serviceAccount,$servicePassword)
