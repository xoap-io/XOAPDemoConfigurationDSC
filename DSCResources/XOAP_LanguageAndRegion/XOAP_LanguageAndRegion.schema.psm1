Configuration 'XOAP_LanguageAndRegion'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'ComputerManagementDSC' -ModuleVersion '9.0.0'

        SystemLocale 'SystemLocaleExample'
        {
            IsSingleInstance = 'Yes'
            SystemLocale     = 'en-US'
        }

        TimeZone 'TimeZoneExample'
        {
            IsSingleInstance = 'Yes'
            TimeZone         = 'UTC'
        }
}
