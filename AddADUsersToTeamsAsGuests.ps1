Install-Module -Name MicrosoftTeams
Connect-MicrosoftTeams -Credential 

[string[]]$users =Get-Content -Path .\alunos.txt
foreach ($u in $users) 
{ 
Write-host $u
Add-TeamUser -User $u -Role
}