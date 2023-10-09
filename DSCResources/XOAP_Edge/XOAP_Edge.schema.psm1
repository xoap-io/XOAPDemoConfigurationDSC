Configuration 'XOAP_Edge'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'GPRegistryPolicyDsc' -ModuleVersion '1.2.0'

        RegistryPolicyFile 'DropDownSuggestions'
        {
            ValueName = 'ShowOneNox'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\ServiceUI'
            TargetType = 'ComputerConfiguration'
            ValueData = '0'
            Ensure = 'Present'
        }

        RegistryPolicyFile 'AllowConfigurationUpdateForBooksLibrary'
        {
            ValueName = 'AllowConfigurationUpdateForBooksLibrary'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BooksLibrary'
            TargetType = 'ComputerConfiguration'
            ValueData = '0'
            Ensure = 'Present'
        }

        RegistryPolicyFile 'Use FormSuggest'
        {
            ValueName = 'Use FormSuggest'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main'
            TargetType = 'ComputerConfiguration'
            ValueData = 'No'
            Ensure = 'Present'
        }

        RegistryPolicyFile 'DoNotTrack'
        {
            ValueName = 'DoNotTrack'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main'
            TargetType = 'ComputerConfiguration'
            ValueData = '1'
            Ensure = 'Present'
        }

        RegistryPolicyFile 'FormSuggest Passwords'
        {
            ValueName = 'FormSuggest Passwords'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main'
            TargetType = 'ComputerConfiguration'
            ValueData = 'No'
            Ensure = 'Present'
        }

        RegistryPolicyFile 'ShowSearchSuggestionsGlobal'
        {
            ValueName = 'ShowSearchSuggestionsGlobal'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\SearchScopes'
            TargetType = 'ComputerConfiguration'
            ValueData = '0'
            Ensure = 'Present'
        }

        RegistryPolicyFile 'EdgeWindowsDefenderSmartScreen'
        {
            ValueName = 'EnabledV9'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter'
            TargetType = 'ComputerConfiguration'
            ValueData = '0'
        }

        RegistryPolicyFile 'AllowWebContentOnNewTabPage'
        {
            ValueName = 'AllowWebContentOnNewTabPage'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\ServiceUI'
            TargetType = 'ComputerConfiguration'
            ValueData = '0'
            Ensure = 'Present'
        }

        RegistryPolicyFile 'ProvisionedHomePages'
        {
            ValueName = 'ProvisionedHomePages'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Internet Settings'
            TargetType = 'ComputerConfiguration'
            ValueData = 'about:blank'
            Ensure = 'Present'
        }

        RegistryPolicyFile 'PreventFirstRunPage'
        {
            ValueName = 'PreventFirstRunPage'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main'
            TargetType = 'ComputerConfiguration'
            ValueData = '1'
            Ensure = 'Present'
        }

        RegistryPolicyFile 'MSCompatibilityMod'
        {
            ValueName = 'MSCompatibilityMod'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\MicrosoftEdge\BrowserEmulation'
            TargetType = 'ComputerConfiguration'
            ValueData = '0'
            Ensure = 'Present'
        }

        RefreshRegistryPolicy 'RefreshPolicy'
        {
            IsSingleInstance = 'Yes'
        }
}
