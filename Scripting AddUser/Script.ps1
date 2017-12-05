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
    $Upassword = $user.Password
    
    

    switch($user.Groupe){
        "gDirection" {$Groupe = "OU = Direction, DC = isec-group, DC = local, CN =$Name"}
        "gMétiers" {$Groupe = "OU = Métiers, DC = isec-group, DC = local, CN =$Name"}
        "gComm" {$Groupe = "OU = Comm, DC = isec-group, DC =local, CN =$Name"}
        "gFinance" {$Groupe = "OU = Finance, DC = isec-group, DC =local, CN =$Name"}
        "gRH"{$Groupe = "OU = RH, DC = isec-group, DC = local, CN =$Name"}
        "tDirection" {$Groupe = "OU = tDirection, DC = tf42-group, DC = local, CN =$Name"}
        "tTechnique" {$Groupe = "OU = tTechnique, DC = tf42-group, DC = local, CN =$Name"}
        "tCommercial" {$Groupe = "OU = tCommercial, DC = tf42-group, DC = local, CN =$Name"}
        "tAdminFinance" {$Groupe = "OU = tAdminFinance, DC = tf42-group, DC = local, CN =$Name"}
        "tRH" {$Groupe = "OU = tRH, DC = tf42-group, DC = local, CN =$Name"}
        default {$Groupe = $null}    
    }
    
     try {
            New-ADUser -Name $Name -SamAccountName $Login -UserPrincipalName $Login -DisplayName $Name -GivenName $Fname -Surname $Lname -AccountPassword (ConvertTo-SecureString $Upassword -AsPlainText -Force)  -Department $Groupe -Enabled $true
            echo "Utilisateur ajouté : $Name"
          
           
        } catch{
            echo "utilisateur non ajouté : $Name"
       }   

   }