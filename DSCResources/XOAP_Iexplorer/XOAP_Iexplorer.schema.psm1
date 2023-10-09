Configuration 'XOAP_Iexplorer'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'

        Registry 'DisableNetworkLocation'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\System\CurrentControlSet\Control\Network'
            Ensure      = 'Present'
            ValueName   = 'NewNetworkWindowOff'
            ValueType   = 'dword'
            ValueData   = '1'
        }

        Registry 'DisableTCPTaskOffload'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\TCPIP\Parameters'
            Ensure      = 'Present'
            ValueName   = 'DisableTaskOffload'
            ValueType   = 'dword'
            ValueData   = '1'
        }

        Registry 'SuggestedSites'
        {
            ValueName = 'Enabled'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Internet Explorer\Suggested Sites'
            ValueData = '0'
        }

        Registry 'AllowServicePoweredQSA'
        {
            ValueName = 'AllowServicePoweredQSA'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Internet Explorer'
            ValueData = '0'
        }

        Registry 'PolicyDisableGeolocation'
        {
            ValueName = 'PolicyDisableGeolocation'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Internet Explorer\Geolocation'
            ValueData = '1'
        }

        Registry 'IEWindowsDefenderSmartScreen'
        {
            ValueName = 'EnabledV9'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Internet Explorer\PhishingFilter'
            ValueData = '0'
        }

        Registry 'DisableSiteListEditing'
        {
            ValueName = 'DisableSiteListEditing'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Internet Explorer\BrowserEmulation Explorer\BrowserEmulation'
            ValueData = '1'
        }

        Registry 'FlipAhead'
        {
            ValueName = 'Enabled'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Internet Explorer\FlipAhead'
            ValueData = '0'
        }

        Registry 'BackgroundSyncStatus'
        {
            ValueName = 'BackgroundSyncStatus'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds'
            ValueData = '0'
        }
}
