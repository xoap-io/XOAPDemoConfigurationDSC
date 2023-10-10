Configuration 'XOAPDemoConfigurationDSC'
{
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_AppxPackages' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_AuditPolicy' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Defender' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Edge' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Environment' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_FeaturesAndRoles' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Firewall' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Iexplorer' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_LanguageAndRegion' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Networking' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_PendingReboot' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_PowerPlan' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_PowerShell' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Privacy' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_PSModules' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Registry' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_RemoteDesktop' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_RunProcess' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_ScheduledTasks' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Services' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Shortcuts' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_SMBConfiguration' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_UserAccountControl' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_UserRightsAssignment' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_UsersAndGroups' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_UserSettings' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_VirtualMemory' -ModuleVersion '0.0.1'
    Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_WindowsUpdates' -ModuleVersion '0.0.1'

    Node 'XOAPDemoConfigurationDSC'
    {
        AppxPackages 'XOAP_AppxPackages'
        {
        }
    }
}
XOAPDemoConfigurationDSC -OutputPath 'C:\XOAPDemoConfigurationDSC'
