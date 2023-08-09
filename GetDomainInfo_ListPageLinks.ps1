## Not tested yet just wrote this in order not to forget
## Get domain info and lists of the main page. 

write-host "Please insert the url to check"
$site = read-host url
$ip = Resolve-DNSName -Name $site
$Mail = Resolve-DNSName -Type MX -Name $site 
$TXT = Resolve-DNSName -Type TXT -Name $site
write-host "List of IP Address: " + $ip.IPAddress
write-host "List of MX records: " + $Mail.NameExchange
write-host "List of TXT Records: " + $TXT.Strings
$content = Invoke-WebRequest -uri $site
write-host "Page Links" 
$content.links.outerHTML
write host "Site Headers" 
$content.headers
