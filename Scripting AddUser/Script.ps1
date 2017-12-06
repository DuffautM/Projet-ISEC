Import-Module ActiveDirectory
Import-Module 'Microsoft.PowerShell.Security'

$users = Import-Csv -Delimiter "," -Path "./Groupe - Feuille 1.csv"

foreach ($user in $users){
    
    
    $Fname = $user.FirstName
    $Initiales = $user.Initials
    $Lname = $user.LastName
    $Name = $user.FullName
    $Login = $user.UserLogonName
    $Groupe = $user.Groupe
    $ou = $null
    $Upassword = $user.Password
    
    

    switch($user.Groupe){
        "gDirection" {$ou = "OU = Direction, DC = isec-group, DC = local, CN =$Name"}
        "gMétiers" {$ou = "OU = Métiers, DC = isec-group, DC = local, CN =$Name"}
        "gComm" {$ou = "OU = Comm, DC = isec-group, DC =local, CN =$Name"}
        "gFinance" {$ou = "OU = Finance, DC = isec-group, DC =local, CN =$Name"}
        "gRH"{$ou = "OU = RH, DC = isec-group, DC = local, CN =$Name"}
        "tDirection" {$ou = "OU = tDirection, DC = tf42-group, DC = local, CN =$Name"}
        "tTechnique" {$ou = "OU = tTechnique, DC = tf42-group, DC = local, CN =$Name"}
        "tCommercial" {$ou = "OU = tCommercial, DC = tf42-group, DC = local, CN =$Name"}
        "tAdminFinance" {$ou = "OU = tAdminFinance, DC = tf42-group, DC = local, CN =$Name"}
        "tRH" {$ou = "OU = tRH, DC = tf42-group, DC = local, CN =$Name"}    
    }
    
     try {
            New-ADUser -Name $Name -SamAccountName $Login -UserPrincipalName $Login -DisplayName $Name -GivenName $Fname -Surname $Lname -AccountPassword (ConvertTo-SecureString $Upassword -AsPlainText -Force)  -Path $ou -Enabled $true
            Write-Host -ForegroundColor Green "Utilisateur ajouté : $Name"
          
           
        } catch{
            Write-Host -ForegroundColor Red "utilisateur non ajouté : $Name"
       }   

   }