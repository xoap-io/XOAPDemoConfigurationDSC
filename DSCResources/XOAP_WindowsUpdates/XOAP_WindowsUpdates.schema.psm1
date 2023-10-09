Configuration 'XOAP_WindowsUpdates'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'xWindowsUpdate' -ModuleVersion '2.8.0.0'

        xWindowsUpdateAgent 'InstallSecurityAndImportant'
        {
            IsSingleInstance = 'Yes'
            UpdateNow        = $true
            Category         = @('Security','Important')
            Source           = 'WindowsUpdate'
            Notifications    = 'Disabled'
        }
}
