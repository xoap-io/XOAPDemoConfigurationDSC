Configuration 'XOAP_UsersAndGroups'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'ComputerManagementDSC' -ModuleVersion '9.0.0'
        
        User 'xoap-admin'
        {
            UserName = 'xoap-admin'
            Description = 'XOAP demo Administrator'
            Disabled = $false
            FullName = 'XOAP Administrator'
            Password = $passwordCred
            PasswordChangeNotAllowed = $true
            PasswordChangeRequired = $false
            PasswordNeverExpires = $true
            Ensure = 'Present'
        }

        Group 'Restricted Users: Authenticated Users to Event Log Readers'
        {
            GroupName = 'Event Log Readers'
            Ensure = 'Present'
            MembersToInclude = 'S-1-5-11'
        }
}
