Configuration 'XOAP_Firewall'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'NetworkingDsc' -ModuleVersion '9.0.0'

        FirewallProfile 'EnableProfileDomain'
        {
            Name = ('Domain')
            Enabled = 'False'
        }

        FirewallProfile 'EnableProfilePrivate'
        {
            Name = ('Private')
            Enabled = 'False'
        }

        FirewallProfile 'EnableProfilePublic'
        {
            Name = ('Public')
            Enabled = 'False'
        }

        Firewall 'WinRMRuleDomainPrivate'
        {
            Name = 'Windows Remote Management (HTTP-In) - Domain & Private'
            DisplayName = 'Windows Remote Management (HTTP-In)'
            Group = 'Windows Remote Management'
            Description = 'XOAPInbound rule for Windows Remote Management via WS-Management. [TCP 5985]'
            Ensure = 'Present'
            Enabled = 'True'
            Profile = ('Domain', 'Private')
            Direction = 'Inbound'
            Program = 'System'
            LocalPort = '5985'
            RemoteAddress = 'Any'
            Protocol = 'TCP'
        }
        
        Firewall 'WinRMRulePublic'
        {
            Name = 'Windows Remote Management (HTTP-In) - Public'
            DisplayName = 'XOAPWindows Remote Management (HTTP-In)'
            Group = 'Windows Remote Management'
            Description = 'Inbound rule for Windows Remote Management via WS-Management. [TCP 5985]'
            Ensure = 'Present'
            Enabled = 'True'
            Profile = ('Public')
            Direction = 'Inbound'
            Program = 'System'
            LocalPort = '5985'
            RemoteAddress = 'LocalSubnet'
            Protocol = 'TCP'
        }

        Firewall 'RemoteDesktopShadowRule'
        {
            Name = 'Remote Desktop - Shadow (TCP-In)'
            DisplayName = 'XOAPRemote Desktop - Shadow (TCP-In)'
            Group = 'Remote Desktop'
            Description = 'Inbound rule for the Remote Desktop service to allow shadowing of an existing Remote Desktop session. (TCP-In)'
            Ensure = 'Present'
            Enabled = 'True'
            Direction = 'Inbound'
            Program = '%SystemRoot%\system32\RdpSa.exe'
            LocalPort = 'Any'
            Protocol = 'TCP'
        }
        Firewall 'RemoteDesktopUserModeRule'
        {
            Name = 'Remote Desktop - User Mode (TCP-In)'
            DisplayName = 'XOAPRemote Desktop - User Mode (TCP-In)'
            Group = 'Remote Desktop'
            Description = 'Inbound rule for the Remote Desktop service to allow RDP traffic. [TCP 3389]'
            Ensure = 'Present'
            Enabled = 'True'
            Direction = 'Inbound'
            Program = '%SystemRoot%\system32\svchost.exe'
            LocalPort = '3389'
            Protocol = 'TCP'
        }

        Firewall 'RemoteDesktopUserModeUDPRule'
        {
            Name = 'Remote Desktop - User Mode (UDP-In)'
            DisplayName = 'XOAPRemote Desktop - User Mode (UDP-In)'
            Group = 'Remote Desktop'
            Description = 'Inbound rule for the Remote Desktop service to allow RDP traffic. [UDP 3389]'
            Ensure = 'Present'
            Enabled = 'True'
            Direction = 'Inbound'
            Program = '%SystemRoot%\system32\svchost.exe'
            LocalPort = '3389'
            Protocol = 'UDP'
        }

        Firewall FileandPrinterSharingRule
        {
            Name = 'File and Printer Sharing (Echo Request - ICMPv4-In)'
            DisplayName = 'XOAPFile and Printer Sharing (Echo Request - ICMPv4-In)'
            Group = 'File and Printer Sharing'
            Description = 'Echo Request messages are sent as ping requests to other nodes.'
            Ensure = 'Present'
            Enabled = 'True'
            Profile = ('Domain')
            Direction = 'Inbound'
            Program = 'System'
            Protocol = 'ICMPv4'
        }

        Firewall 'AzurePlatformRuleInbound'
        {
            Name = 'AzurePlatformInbound'
            DisplayName = 'XOAPAzurePlatform'
            Group = 'Azure'
            Description = 'IP address 168.63.129.16 is a virtual public IP address that is used to facilitate a communication channel to Azure platform resources.'
            Ensure = 'Present'
            Enabled = 'True'
            Profile = 'Any'
            Direction = 'Inbound'
            RemoteAddress = '168.63.129.16'
            EdgeTraversalPolicy = 'Allow'
        }

        Firewall 'AzurePlatformOutbound'
        {
            Name = 'AzurePlatformOutbound'
            DisplayName = 'XOAPAzurePlatform'
            Group = 'Azure'
            Description = 'IP address 168.63.129.16 is a virtual public IP address that is used to facilitate a communication channel to Azure platform resources.'
            Ensure = 'Present'
            Enabled = 'True'
            Profile = 'Any'
            Direction = 'Outbound'
            RemoteAddress = '168.63.129.16'
        }
}
