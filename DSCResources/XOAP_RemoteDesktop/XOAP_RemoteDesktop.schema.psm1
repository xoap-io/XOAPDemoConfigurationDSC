Configuration 'XOAP_RemoteDesktop'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'xRemoteDesktopSessionHost' -ModuleVersion '2.1.0'

        RemoteDesktopAdmin 'RemoteDesktopSettings'
        {
            IsSingleInstance   = 'yes'
            Ensure             = 'Present'
            UserAuthentication = 'Secure'
        }

        Registry 'Registry(POL): HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fEnableTimeZoneRedirection'
        {
            ValueName = 'fEnableTimeZoneRedirection'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
            ValueData = '1'
        }

        Registry 'Registry(POL): HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\DataCollection\AllowTelemetry'
        {
            ValueName = 'AllowTelemetry'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\DataCollection'
            ValueData = '0'  
        }
            
        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\MaxMonitors'
        {
            ValueName = 'MaxMonitors'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'
            ValueData = '4'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\MaxXResolution'
        {
            ValueName = 'MaxXResolution'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'
            ValueData = '5120'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\MaxYResolution'
        {
            ValueName = 'MaxYResolution'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'
            ValueData = '2880'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\rdp-sxs\MaxMonitors'
        {
            ValueName = 'MaxMonitors'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\rdp-sxs'
            ValueData = '4'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\rdp-sxs\MaxXResolution'
        {
            ValueName = 'MaxXResolution'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\rdp-sxs'
            ValueData = '5120'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\rdp-sxs\MaxYResolution'
        {
            ValueName = 'MaxYResolution'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\rdp-sxs'
            ValueData = '2880'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\fDenyTSConnections'
        {
            ValueName = 'fDenyTSConnections'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server'
            ValueData = '0'  
        }

        Registry 'Registry(POL): HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDenyTSConnections'
        {
            ValueName = 'fDenyTSConnections'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
            ValueData = '0'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp\PortNumber'
        {
            ValueName = 'PortNumber'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp'
            ValueData = '3389'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp\LanAdapter'
        {
            ValueName = 'LanAdapter'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp'
            ValueData = '0'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\UserAuthentication'
        {
            ValueName = 'UserAuthentication'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'
            ValueData = '1'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\SecurityLayer'
        {
            ValueName = 'SecurityLayer'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'
            ValueData = '1'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\fAllowSecProtocolNegotiation'
        {
            ValueName = 'fAllowSecProtocolNegotiation'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'
            ValueData = '1'  
        }

        Registry 'Registry(POL): HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\KeepAliveEnable'
        {
            ValueName = 'KeepAliveEnable'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
            ValueData = '1'  
        }

        Registry 'Registry(POL): HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\KeepAliveInterval'
        {
            ValueName = 'KeepAliveInterval'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
            ValueData = '1'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp\KeepAliveTimeout'
        {
            ValueName = 'KeepAliveTimeout'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp'
            ValueData = '1'  
        }

        Registry 'Registry(POL): HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableAutoReconnect'
        {
            ValueName = 'fDisableAutoReconnect'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
            ValueData = '0'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp\fInheritReconnectSame'
        {
            ValueName = 'fInheritReconnectSame'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp'
            ValueData = '1'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp\fReconnectSame'
        {
            ValueName = 'fReconnectSame'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp'
            ValueData = '0'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp\MaxInstanceCount'
        {
            ValueName = 'MaxInstanceCount'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\Winstations\RDP-Tcp'
            Hex = $true
            ValueData = 'FFFFFFFF'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\SSLCertificateSHA1Hash'
        {
            ValueName = 'SSLCertificateSHA1Hash'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'
            Ensure = 'Absent' 
        }
}
