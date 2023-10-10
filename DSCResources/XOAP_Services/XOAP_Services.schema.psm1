Configuration 'XOAP_Services'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'

        Registry 'IncreaseServicesStartupTimeout'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control'
            Ensure      = 'Present'
            ValueName   = 'ServicesPipeTimeout'
            ValueType   = 'Dword'
            ValueData   = '120000'
        }

        Service 'WerSvc'
        {
            Name = 'WerSvc'
            StartupType = 'Manual'
            State = 'Running'
        }

        Service 'WinRM'
        {
            Name = 'WinRM'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'W32Time'
        {
            Name = 'W32Time'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'BFE'
        {
            Name = 'bfe'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'DHCP'
        {
            Name = 'dhcp'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'DNSCache'
        {
            Name = 'dnscache'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'IKEEXT'
        {
            Name = 'IKEEXT'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'IPHLPSVC'
        {
            Name = 'iphlpsvc'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'Netman'
        {
            Name = 'netman'
            StartupType = 'Manual'
            State = 'Running'
        }

        Service 'NSI'
        {
            Name = 'nsi'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'TermService'
        {
            Name = 'TermService'
            StartupType = 'Manual'
            State = 'Running'
        }

        Service 'MpsSvc'
        {
            Name = 'MpsSvc'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'RemoteRegistry'
        {
            Name = 'RemoteRegistry'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'XblAuthManager'
        {
            Name = 'XblAuthManager'
            StartupType = 'Disabled'
            State = 'Stopped'
        }

        Service 'XblGameSave'
        {
            Name = 'XblGameSave'
            StartupType = 'Disabled'
            State = 'Stopped'
        }

        Service 'XboxGipSvc'
        {
            Name = 'XboxGipSvc'
            StartupType = 'Disabled'
            State = 'Stopped'
        }

        Service 'XboxNetApiSvc'
        {
            Name = 'XboxNetApiSvc'
            StartupType = 'Disabled'
            State = 'Stopped'
        }

        Service 'dot3svc'
        {
            Name = 'dot3svc'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'SharedAccess'
        {
            Name = 'SharedAccess'
            State = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'bthserv'
        {
            Name = 'bthserv'
            State = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'p2psvc'
        {
            Name = 'p2psvc'
            State = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'CertPropSvc'
        {
            Name = 'CertPropSvc'
            StartupType = 'Automatic'
            State = 'Running'
        }

        Service 'TrkWks'
        {
            Name = 'TrkWks'
            State = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'DiagTrack'
        {
            Name        = 'DiagTrack'
            State       = 'Running'
            StartupType = 'Automatic'
        }

        Service 'AJRouter'
        {
            Name        = 'AJRouter'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'ALG'
        {
            Name        = 'ALG'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'BITS'
        {
            Name        = 'BITS'
            State       = 'Stopped'
            StartupType = 'Manual'
        }

        Service 'PeerDistSvc'
        {
            Name        = 'PeerDistSvc'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'DPS'
        {
            Name        = 'DPS'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'WdiServiceHost'
        {
            Name        = 'WdiServiceHost'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'WdiSystemHost'
        {
            Name        = 'WdiSystemHost'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'fdPHost'
        {
            Name        = 'fdPHost'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'FDResPub'
        {
            Name        = 'FDResPub'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'MapsBroker'
        {
            Name        = 'MapsBroker'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'CscService'
        {
            Name        = 'CscService'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'RetailDemo'
        {
            Name        = 'RetailDemo'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'SensrSvc'
        {
            Name        = 'SensrSvc'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'upnphost'
        {
            Name        = 'upnphost'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'wcncsvc'
        {
            Name        = 'wcncsvc'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'WMPNetworkSvc'
        {
            Name        = 'WMPNetworkSvc'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }

        Service 'icssvc'
        {
            Name        = 'icssvc'
            State       = 'Stopped'
            StartupType = 'Disabled'
        }
}
