Connect-MsolService

Get-MsolUser -All | Where-Object {$_.isLicensed -eq $true} |
Select DisplayName, UserPrincipalName, Licenses |
Export-Csv "./Licensed_Users.csv" -NoTypeInformation
