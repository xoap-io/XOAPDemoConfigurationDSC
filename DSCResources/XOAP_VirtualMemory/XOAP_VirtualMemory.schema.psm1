Configuration 'XOAP_VirtualMemory'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'ComputerManagementDSC' -ModuleVersion '9.0.0'

        VirtualMemory 'PagingSettings'
        {
            Type        = 'CustomSize'
            Drive       = 'C'
            InitialSize = '2048'
            MaximumSize = '2048'
        }
}
