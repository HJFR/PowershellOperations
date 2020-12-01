function Create-Password{
param(
      [Parameter()]
      [int]$MinPassLeng = 5,
      [Parameter()]
      [int]$maxPassLeng = 10,
      [Parameter()]
      [int]$NumAlfaNumChar = 5,
      [Parameter()]
      [int]$ConvToSecStr
)
add-type -assemblyName 'System.Web'
$lenght = Get-Random -Minimum $MinPassLeng -Maximum $MaxPassLeng
$password = [system.web.security.Membership]::GeneratePassword($lenght,$NumAlfaNumChar)
if($ConvertToSecurityString.IsPresent){
  ConvertTo-SecurityString -String $password -AsPlainText -Force
}
else{
    $Password
}
