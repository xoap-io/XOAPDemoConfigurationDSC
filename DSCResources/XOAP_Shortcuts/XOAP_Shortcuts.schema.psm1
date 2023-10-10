Configuration 'XOAP_Shortcuts'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'ComputerManagementDSC' -ModuleVersion '9.0.0'

        $publicDesktopShortcuts = Get-ChildItem C:\Users\Public\Desktop -Filter *.lnk
        $personalDesktopShortcuts = Get-ChildItem ([System.Environment]::GetFolderPath('Desktop')) -Filter *.lnk

        if ($publicDesktopShortcuts) {
            foreach ($File in $publicDesktopShortcuts.FullName) {
            File 'Remove$File'
            {
                Ensure = 'Absent'
                DestinationPath = '$File'
            }
            }
        }

        if ($personalDesktopShortcuts) {
            foreach ($File in $personalDesktopShortcuts.FullName) {
            File 'Remove$File'
            {
                Ensure = 'Absent'
                DestinationPath = '$File'
            }
            }
        }
}
