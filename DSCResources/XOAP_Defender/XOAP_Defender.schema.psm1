Configuration 'XOAP_Defender'
{
	Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'

        Registry 'ConfigureAppInstallControlEnabled'
        {
            ValueName = 'ConfigureAppInstallControlEnabled'
            ValueType = 'DWORD'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen'
            ValueData = '1'
        }

        Registry 'ConfigureAppInstallControl'
        {
            ValueName = 'ConfigureAppInstallControl'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen'
            ValueData = 'Anywhere'
        }
}
