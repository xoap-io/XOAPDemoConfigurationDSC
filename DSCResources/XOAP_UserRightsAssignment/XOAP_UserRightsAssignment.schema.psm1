Configuration 'XOAP_UserRightsAssignment'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'SecurityPolicyDSC' -ModuleVersion '2.10.0.0'
                
        UserRightsAssignment 'User Rights Assignment: SeLoadDriverPrivilege'
        {
            Policy = 'Load_and_unload_device_drivers'
            Identity = 'BUILTIN\Administrators'
            Force = $True
        }

        UserRightsAssignment 'User Rights Assignment: SeNetworkLogonRight'
        {
            Policy = 'Access_this_computer_from_the_network'
            Identity = 'NT AUTHORITY\NETWORK SERVICE'
            Force = $True
        }

        UserRightsAssignment 'User Rights Assignment: SeProfileSingleProcessPrivilege'
        {
            Policy = 'Profile_single_process'
            Identity = 'BUILTIN\Administrators','BUILTIN\Users'
            Force = $True
        }

        UserRightsAssignment 'User Rights Assignment: SeRemoteInteractiveLogonRight'
        {
            Policy = 'Allow_log_on_through_Remote_Desktop_Services'
            Identity = 'BUILTIN\Remote Desktop Users'
            Force = $True
        }

        UserRightsAssignment 'User Rights Assignment: SeSystemProfilePrivilege'
        {
            Policy = 'Profile_system_performance'
            Identity = 'BUILTIN\Administrators','BUILTIN\Users'
            Force = $True
        }

        UserRightsAssignment 'User Rights Assignment: SeSystemTimePrivilege'
        {
            Policy = 'Change_the_system_time'
            Identity = 'BUILTIN\Administrators','NT AUTHORITY\LOCAL SERVICE'
            Force = $True
        }

        SecurityOption 'AccountSecurityOptions'
        {
            Name = 'AccountSecurityOptions'
            Accounts_Guest_account_status = 'Disabled'   
        }
        
        Registry 'AllowInsecureGuestAuth'
        {
            Ensure    = 'Present'
            Key       = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\LanmanWorkstation'
            ValueName = 'AllowInsecureGuestAuth'
            ValueType = 'DWord'
            ValueData = '0'
        }
        
        UserRightsAssignment 'Denyaccesstothiscomputerfromthenetwork'
        {
            Policy   = 'Deny_access_to_this_computer_from_the_network'
            Identity = 'Guests'
        }
        
        UserRightsAssignment 'Denylogonasabatchjob'
        {
            Policy   = 'Deny_log_on_as_a_batch_job'
            Identity = 'Guests'
        }
        
        UserRightsAssignment 'Denylogonasaservice'
        {
            Policy   = 'Deny_log_on_as_a_service'
            Identity = 'Guests'
        }
        
        UserRightsAssignment 'Denylogonlocally'
        {
            Policy   = 'Deny_log_on_locally'
            Identity = 'Guests'
        }
        
        UserRightsAssignment 'DenylogonthroughRemoteDesktopServices'
        {
            Policy   = 'Deny_log_on_through_Remote_Desktop_Services'
            Identity = 'Guests'
        }
}
