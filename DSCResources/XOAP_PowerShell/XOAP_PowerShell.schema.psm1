Configuration 'XOAP_PowerShell'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'ComputerManagementDSC' -ModuleVersion '9.0.0'

        PowerShellExecutionPolicy 'ExecutionPolicyLocalMachine'
        {
            ExecutionPolicyScope = 'LocalMachine'
            ExecutionPolicy      = 'RemoteSigned'
        }

        Registry 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\PowerShell'
        {
            ValueName = 'AllowEncryptionOracle'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\PowerShell'
            ValueData = 1
            Ensure = 'Present'
        }

        Registry 'HKEY_LOCAL_MACHINE::\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging'
        {
            ValueName = 'AllowEncryptionOracle'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging'
            ValueData = 1
            Ensure = 'Present'
        }

        Registry 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames'
        {
            ValueName = 'AllowEncryptionOracle'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging\ModuleNames'
            ValueData = '*'
            Ensure = 'Present'
        }
}
