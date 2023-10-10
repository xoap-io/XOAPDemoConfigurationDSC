Configuration 'XOAP_UserAccountControl'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'ComputerManagementDSC' -ModuleVersion '9.0.0'

        UserAccountControl 'SetGranularSettings'
        {
            IsSingleInstance  = 'Yes'
            FilterAdministratorToken = 0
            ConsentPromptBehaviorAdmin = 5
            ConsentPromptBehaviorUser = 3
            EnableInstallerDetection = 1
            ValidateAdminCodeSignatures = 0
            EnableLua = 1
            PromptOnSecureDesktop = 1
            EnableVirtualization = 1
        }
}
