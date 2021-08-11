# Week 7 Homework: A Day in the Life of a Windows Sysadmin

#### Task 1  
 - ![image](./TaskOne.png)

#### Task 2
 - ![image](./Task2_GPO_Lockout.png)

#### Task 3
 - ![image](./Task3_Powershell_GPO.png)

#### Task 4  
```powershell
##Enumerate ACLs for files in a folder

$sourceDirectory = Read-Host "Enter directory to report Access Control List for contents:"

$directory = Get-ChildItem -Path $sourceDirectory

foreach ($item in $directory) 
{
   $Acl = Get-Acl -Path $item.FullName | Select-Object -Property path,owner -ExpandProperty access | Format-List
   Write-Output $Acl
}
```

#### Task 5
 - ![image](./Task5_Powershell_AuditLog.PNG)