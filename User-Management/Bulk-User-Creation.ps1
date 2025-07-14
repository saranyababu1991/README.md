# Requires MSOnline module
Import-Module MSOnline

# Connect to MSOnline
Connect-MsolService

# CSV Format: UserPrincipalName,DisplayName,FirstName,LastName
$users = Import-Csv "./users.csv"

foreach ($user in $users) {
    New-MsolUser -UserPrincipalName $user.UserPrincipalName `
                 -DisplayName $user.DisplayName `
                 -FirstName $user.FirstName `
                 -LastName $user.LastName `
                 -UsageLocation "GB" `
                 -LicenseAssignment "tenant:ENTERPRISEPACK"
}
