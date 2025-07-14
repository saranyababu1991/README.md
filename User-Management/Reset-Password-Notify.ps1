Import-Module MSOnline
Connect-MsolService

$UserUPN = "user@domain.com"
$NewPassword = "P@ssword123"

Set-MsolUserPassword -UserPrincipalName $UserUPN -NewPassword $NewPassword -ForceChangePassword $false

Send-MailMessage -To $UserUPN -From "itadmin@domain.com" -Subject "Password Reset" `
-Body "Hello, your password has been reset. New password: $NewPassword" `
-SmtpServer "smtp.office365.com" -UseSsl -Port 587 -Credential (Get-Credential)
