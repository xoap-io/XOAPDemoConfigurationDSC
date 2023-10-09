# XOAPDemoConfigurationDSC

This repository contains a PowerShell DSC module for XOAP demo purposes.

## Code of Conduct

This project has adopted this [Code of Conduct](CODE_OF_CONDUCT.md).

## Contributing

Please check out common DSC Community [contributing guidelines](https://dsccommunity.org/guidelines/contributing).

## Change log

A full list of changes in each version can be found in the [change log](CHANGELOG.md).

## Prerequisites

Be sure that the following DSC modules are installed on your system:

- DSCR_AppxPackage (0.3.0)
- ComputerManagementDSC (9.0.0)
- AuditPolicyDSC (1.4.0.0)
- GPRegistryPolicyDsc (1.2.0)
- FileContentDsc (1.3.0.151)
- NetworkingDsc (9.0.0)
- xRemoteDesktopSessionHost (2.1.0)
- xPSDesiredStateConfiguration (9.1.0)
- SecurityPolicyDSC (2.10.0.0)
- UserRegistryDSC (0.1.3)
- xWindowsUpdate (2.8.0.0)

## DSC Resources

To implement the XOAP demo configuration, add the following resources to your DSC configuration:


```PowerShell
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
```
