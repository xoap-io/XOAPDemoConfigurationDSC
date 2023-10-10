Configuration 'XOAP_FilesAndFolders'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'FileContentDsc' -ModuleVersion '1.3.0.151'

        File SourceDirectory 
        {
            Type = 'Directory'
            DestinationPath = 'C:\XOAP'
            Ensure = 'Present'
        }

        IniSettingsFile SetLogging
        {
            Path    = 'c:\myapp\myapp.ini'
            Section = 'Logging'
            Key     = 'Level'
            Text    = 'Information'
        }

        ReplaceText SetText
        {
            Path   = 'c:\inetpub\wwwroot\default.htm'
            Search = '%appname%'
            Type   = 'Text'
            Text   = 'Awesome App'
        }

        SmbShare 'TempShare'
        {
            Name = 'Temp'
            Path = 'C:\Temp'
            Description = 'Demo description'
            ConcurrentUserLimit = 20
            EncryptData = $false
            FolderEnumerationMode = 'AccessBased'
            CachingMode = 'Manual'
            ContinuouslyAvailable = $false
            FullAccess = @('Administrators')
            ChangeAccess = @('Everyone')
            ReadAccess = @('Everyone')
        }
}
