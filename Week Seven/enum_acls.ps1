#Enumerate ACLs for files in a folder

$sourceDirectory = Read-Host "Enter directory to report Access Control List for contents:"

$directory = Get-ChildItem -Path $sourceDirectory

foreach ($item in $directory) 
{
   $Acl = Get-Acl -Path $item.FullName | Select-Object -Property path,owner -ExpandProperty access | Format-List
   Write-Output $Acl
}