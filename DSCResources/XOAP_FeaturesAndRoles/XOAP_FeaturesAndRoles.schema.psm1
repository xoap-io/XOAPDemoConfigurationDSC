Configuration 'XOAP_FeaturesAndRoles'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'

        WindowsOptionalFeature 'WorkFolders-Client'
        {
            Name    = 'WorkFolders-Client'
            Ensure  = 'Disable'
        }
        
        WindowsOptionalFeature 'SearchEngine-Client-Package'
        {
            Name    = 'SearchEngine-Client-Package'
            Ensure  = 'Disable'
        }

        WindowsOptionalFeature 'Printing-Foundation-InternetPrinting-Client'
        {
            Name    = 'Printing-Foundation-InternetPrinting-Client'
            Ensure  = 'Disable'
        }

        WindowsOptionalFeature 'MicrosoftWindowsPowerShellV2'
        {
            Name    = 'MicrosoftWindowsPowerShellV2'
            Ensure  = 'Enable'
        }

        WindowsOptionalFeature 'SMB1Protocol'
        {
            Name    = 'SMB1Protocol'
            Ensure  = 'Disable'
        }

        WindowsOptionalFeature 'Windows-Defender-ApplicationGuard'
        {
            Name    = 'Windows-Defender-ApplicationGuard'
            Ensure  = 'Enable'
        }
}
