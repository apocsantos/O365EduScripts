[string[]]$users =Get-Content -Path .\alunos.txt

foreach ($u in $users) 
{ 
Set-CASMailbox -Identity $u -OwaMailboxPolicy "Allow users from changing their photos"
Write-host $u
}
