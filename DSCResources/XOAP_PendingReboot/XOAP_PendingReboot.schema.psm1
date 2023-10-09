Configuration 'XOAP_PendingReboot'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'ComputerManagementDSC' -ModuleVersion '9.0.0'

        PendingReboot 'ConfigMgrReboot'
        {
            Name                        = 'XOAP'
            SkipComponentBasedServicing = $false
            SkipWindowsUpdate           = $False
            SkipPendingFileRename       = $False
            SkipPendingComputerRename   = $False
            SkipCcmClientSDK            = $true
        }
}
