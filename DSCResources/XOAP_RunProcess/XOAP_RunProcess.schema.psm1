Configuration 'XOAP_RunProcess'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'xPSDesiredStateConfiguration' -ModuleVersion '9.1.0'

        xWindowsProcess 'StartProcess'
        {
            Path      = ''
            Arguments = 'Argument'
            Ensure    = 'Present'
        }
}
