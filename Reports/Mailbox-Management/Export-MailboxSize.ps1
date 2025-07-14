Connect-ExchangeOnline -UserPrincipalName youradmin@yourdomain.com

Get-Mailbox -ResultSize Unlimited | Get-MailboxStatistics |
Select DisplayName, TotalItemSize, ItemCount |
Export-Csv "./Mailbox_Sizes.csv" -NoTypeInformation
