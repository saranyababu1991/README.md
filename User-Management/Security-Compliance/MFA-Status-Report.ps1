# Requires MSOnline module
Import-Module MSOnline
Connect-MsolService

Get-MsolUser -All | Select DisplayName, UserPrincipalName, `
@{Name="MFAStatus";Expression={$_.StrongAuthenticationRequirements.State}} |
Export-Csv "./MFA_Status_Report.csv" -NoTypeInformation
