Configuration 'XOAP_Registry'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\CrashControl\CrashDumpEnabled'
        {
            ValueName = 'CrashDumpEnabled'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\CrashControl'
            ValueData = '2'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\CrashControl\DumpFile'
        {
            ValueName = 'DumpFile'
            ValueType = 'ExpandString'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\CrashControl'
            ValueData = '%SystemRoot%\MEMORY.DMP'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\CrashControl\NMICrashDump'
        {
            ValueName = 'NMICrashDump'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\CrashControl'
            ValueData = '1'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps\DumpFolder'
        {
            ValueName = 'DumpFolder'
            ValueType = 'ExpandString'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps'
            ValueData = 'C:\CrashDumps'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps\CrashCount'
        {
            ValueName = 'CrashCount'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps'
            ValueData = '10'  
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps\DumpType'
        {
            ValueName = 'DumpType'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps'
            ValueData = '2'  
        }

        Registry '89B4C1CD-B018-4511-B0A1-5476DBF70820'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Active Setup\Installed Components\'
            ValueName = '{89B4C1CD-B018-4511-B0A1-5476DBF70820}'
            Ensure = 'Absent'
        } 

        Registry '89B4C1CD-B018-4511-B0A1-5476DBF70820 x64'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\WOW6432Node\Microsoft\Active Setup\Installed Components\'
            ValueName = '{89B4C1CD-B018-4511-B0A1-5476DBF70820}'
            Ensure = 'Absent'
        }

        Registry '89820200-ECBD-11cf-8B85-00AA005B4383'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Active Setup\Installed Components\'
            ValueName = '{89820200-ECBD-11cf-8B85-00AA005B4383}'
            Ensure = 'Absent'
        }

        Registry '44BBA840-CC51-11CF-AAFA-00AA00B6015C'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\WOW6432Node\Microsoft\Active Setup\Installed Components\'
            ValueName = '{44BBA840-CC51-11CF-AAFA-00AA00B6015C}'
            Ensure = 'Absent'
        }

        Registry '2C7339CF-2B09-4501-B3F3-F3508C9228ED'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Active Setup\Installed Components\'
            ValueName = '{2C7339CF-2B09-4501-B3F3-F3508C9228ED}'
            Ensure = 'Absent'
        }

        Registry '89820200-ECBD-11cf-8B85-00AA005B4340'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Active Setup\Installed Components\'
            ValueName = '{89820200-ECBD-11cf-8B85-00AA005B4340}'
            Ensure = 'Absent'
        }

        Registry '6BF52A52-394A-11d3-B153-00C04F79FAA6'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Active Setup\Installed Components\'
            ValueName = '{6BF52A52-394A-11d3-B153-00C04F79FAA6}'
            Ensure = 'Absent'
        }

        Registry '22d6f312-b0f6-11d0-94ab-0080c74c7e95'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Active Setup\Installed Components\'
            ValueName = '{22d6f312-b0f6-11d0-94ab-0080c74c7e95}'
            Ensure = 'Absent'
        }

        Registry '22d6f312-b0f6-11d0-94ab-0080c74c7e95 x64'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\WOW6432Node\Microsoft\Active Setup\Installed Components\'
            ValueName = '{22d6f312-b0f6-11d0-94ab-0080c74c7e95}'
            Ensure = 'Absent'
        }

        Registry 'A509B1A8-37EF-4b3f-8CFC-4F3A74704073'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\WOW6432Node\Microsoft\Active Setup\Installed Components\'
            ValueName = '{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}'
            Ensure = 'Absent'
        }

        Registry 'A509B1A8-37EF-4b3f-8CFC-4F3A74704073 x64'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\WOW6432Node\Microsoft\Active Setup\Installed Components\'
            ValueName = '{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}'
            Ensure = 'Absent'
        }

        Registry '2D46B6DC-2207-486B-B523-A557E6D54B47'
        {
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\WOW6432Node\Microsoft\Active Setup\Installed Components\'
            ValueName = '{2D46B6DC-2207-486B-B523-A557E6D54B47}'
            Ensure = 'Absent'
        }

        Registry 'DisableFirstLogonAnimation'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'
            Ensure      = 'Present'
            ValueName   = 'EnableFirstLogonAnimation'
            ValueType   = 'Dword'
            ValueData   = '00000000'
        }

        Registry 'DisableHardErrorMessages'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\System\CurrentControlSet\Control\Windows'
            Ensure      = 'Present'
            ValueName   = 'ErrorMode'
            ValueType   = 'Dword'
            ValueData   = '00000002'
        }

        Registry 'DefragBootOptimizeFunction'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\OptimalLayout'
            Ensure      = 'Present'
            ValueName   = 'EnableAutoLayout'
            ValueType   = 'Dword'
            ValueData   = '00000000'
        }

        Registry 'IncreaseDiskIOTimeout'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\Disk'
            Ensure      = 'Present'
            ValueName   = 'TimeOutValue'
            ValueType   = 'Dword'
            ValueData   = '200'
        }

        Registry 'MemoryManagement'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\System\CurrentControlSet\Control\Session Manager\Memory Management'
            Ensure      = 'Present'
            ValueName   = 'DisablePagingExecutive'
            ValueType   = 'Dword'
            ValueData   = '00000001'
        }

        Registry 'RecommendedMetricsReportingEnabled'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Google\Chrome\Recommended'
            Ensure      = 'Present'
            ValueName   = 'MetricsReportingEnabled'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'MetricsReportingEnabled'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Google\Chrome\'
            Ensure      = 'Present'
            ValueName   = 'MetricsReportingEnabled'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'RecommendedDeviceMetricsReportingEnabled'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Google\Chrome\Recommended'
            Ensure      = 'Present'
            ValueName   = 'DeviceMetricsReportingEnabled'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'DeviceMetricsReportingEnabled'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Google\Chrome\'
            Ensure      = 'Present'
            ValueName   = 'DeviceMetricsReportingEnabled'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'DisableWindowsConsumerFeatures' 
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\CloudContent'
            Ensure      = 'Present'
            ValueName   = 'DisableWindowsConsumerFeatures'
            ValueType   = 'dword'
            ValueData   = '00000001'
        }

        Registry 'ContentDeliveryAllowed' 
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\CloudContent'
            Ensure      = 'Present'
            ValueName   = 'ContentDeliveryAllowed'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'OemPreInstalledAppsEnabled' 
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\CloudContent'
            Ensure      = 'Present'
            ValueName   = 'OemPreInstalledAppsEnabled'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'PreInstalledAppsEnabled' 
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\CloudContent'
            Ensure      = 'Present'
            ValueName   = 'PreInstalledAppsEnabled'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'PreInstalledAppsEverEnabled' 
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\CloudContent'
            Ensure      = 'Present'
            ValueName   = 'PreInstalledAppsEverEnabled'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'SilentInstalledAppsEnabled' 
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\CloudContent'
            Ensure      = 'Present'
            ValueName   = 'SilentInstalledAppsEnabled'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'SystemPaneSuggestionsEnabled' 
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\CloudContent'
            Ensure      = 'Present'
            ValueName   = 'SystemPaneSuggestionsEnabled'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'DisableTelemetryCollection'
        {
            ValueName   = 'AllowTelemetry'
            Ensure      = 'Present'
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\DataCollection'
            ValueType   = 'dword'
            ValueData   = '0'
        }

        Registry 'DisableSensors'
        {
            ValueName   = 'DisableSensors'
            Ensure      = 'Present'
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors'
            ValueType   = 'dword'
            ValueData   = '1'
        }

        Registry 'DoNotTrack'
        {
            ValueName   = 'DoNotTrack'
            Ensure      = 'Present'
            Key         = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\MicrosoftEdge\Main'
            ValueType   = 'dword'
            ValueData   = '1'
        }

        Registry 'PreventLiveTileDataCollection'
        {
            ValueName   = 'PreventLiveTileDataCollection'
            Ensure      = 'Present'
            Key         = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\MicrosoftEdge\Main'
            ValueType   = 'dword'
            ValueData   = '1'
        }

        Registry 'EnableExtendedBooksTelemetry'
        {
            ValueName   = 'EnableExtendedBooksTelemetry'
            Ensure      = 'Present'
            Key         = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\MicrosoftEdge\BooksLibrary'
            ValueType   = 'dword'
            ValueData   = '0'
        }

        Registry 'MicrosoftEdgeDataOptIn'
        {
            ValueName   = 'MicrosoftEdgeDataOptIn'
            Ensure      = 'Present'
            Key         = 'HKEY_LOCAL_MACHINE:\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection'
            ValueType   = 'dword'
            ValueData   = '0'
        }

        Registry 'MapsAutoUpdate'
        {
            ValueName   = 'AutoUpdateEnabled'
            Ensure      = 'Present'
            Key         = 'HKEY_LOCAL_MACHINE:\System\Maps'
            ValueType   = 'dword'
            ValueData   = '0'
        }

        Registry 'AutoLoggerDiagtrackListener'
        {
            ValueName   = 'Start'
            Ensure      = 'Present'
            Key         = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener'
            ValueType   = 'dword'
            ValueData   = '0'
        }

        Registry 'DisableEnterpriseAuthProxy' 
        {
            Ensure    = 'Present'
            Key       = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\DataCollection'
            ValueName = 'DisableEnterpriseAuthProxy'
            ValueType = 'DWord'
            ValueData = '1'      
        } 

        Registry 'FirefoxDisableTelemetry' 
        {
            Ensure    = 'Present'
            Key       = 'HKEY_LOCAL_MACHINE:\Software\Policies\Mozilla\Firefox'
            ValueName = 'DisableTelemetry'
            ValueType = 'DWord'
            ValueData = '1'      
        } 

        Registry 'BlockAboutConfig' 
        {
            Ensure    = 'Present'
            Key       = 'HKEY_LOCAL_MACHINE:\Software\Policies\Mozilla\Firefox'
            ValueName = 'BlockAboutConfig'
            ValueType = 'DWord'
            ValueData = '1'      
        }

        Registry 'BlockAboutProfiles' 
        {
            Ensure    = 'Present'
            Key       = 'HKEY_LOCAL_MACHINE:\Software\Policies\Mozilla\Firefox'
            ValueName = 'BlockAboutProfiles'
            ValueType = 'DWord'
            ValueData = '1'      
        }

        Registry 'DontCheckDefaultBrowser' 
        {
            Ensure    = 'Present'
            Key       = 'HKEY_LOCAL_MACHINE:\Software\Policies\Mozilla\Firefox'
            ValueName = 'DontCheckDefaultBrowser'
            ValueType = 'DWord'
            ValueData = '1'      
        }

        Registry 'DisableCEIP'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\Software\Microsoft\SQMClient\Windows\'
            Ensure      = 'Present'
            ValueName   = 'CEIPEnable'
            ValueType   = 'dword'
            ValueData   = '0'
        }

        Registry 'DisableWindowsDefender'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows Defender'
            Ensure      = 'Present'
            ValueName   = 'Real-Time Protection'
            ValueType   = 'dword'
            ValueData   = '1'
        }

        Registry 'DisableAntiSpyWare'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows Defender\DisableAntiSpyware'
            Ensure      = 'Present'
            ValueName   = 'DisableAntiSpyware'
            ValueType   = 'dword'
            ValueData   = '1'
        }

        Registry 'DisableLocation'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\Windows Search'
            Ensure      = 'Present'
            ValueName   = 'AllowSearchToUseLocation'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'DisableSearchWeb'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\Windows Search'
            Ensure      = 'Present'
            ValueName   = 'ConnectedSearchUseWeb'
            ValueType   = 'dword'
            ValueData   = '00000000'
        }

        Registry 'DisableAdditionalInfoErrorReports'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting'
            Ensure      = 'Present'
            ValueName   = 'DontSendAdditionalData'
            ValueType   = 'dword'
            ValueData   = '00000001'
        }

        Registry 'InactivityTimeoutSecs'
        {
            Key         = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'
            Ensure      = 'Present'
            ValueName   = 'InactivityTimeoutSecs'
            ValueType   = 'dword'
            ValueData   = '00000600'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\WebClient\Parameters\UseBasicAuth'
        {
            ValueName = 'UseBasicAuth'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\WebClient\Parameters'
            ValueData = 0
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\WebClient\Parameters\DisableBasicOverClearChannel'
        {
            ValueName = 'DisableBasicOverClearChannel'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\WebClient\Parameters'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters\AllowEncryptionOracle'
        {
            ValueName = 'AllowEncryptionOracle'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters'
            ValueData = 2
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Silverlight\UpdateMode'
        {
            ValueName = 'UpdateMode'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Silverlight'
            ValueData = 2
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\SettingsPageVisibility'
        {
            ValueName = 'SettingsPageVisibility'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer'
            ValueData = 'hide:autoplay;usb;gaming-broadcasting;gaming-gamebar;gaming-gamemode;gaming-gamedvr;gaming-trueplay;gaming-xboxnetworking;quietmomentsgame'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Virus and threat protection\UILockdown'
        {
            ValueName = 'UILockdown'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Virus and threat protection'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses'
        {
            ValueName = 'DenyDeviceClasses'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClassesRetroactive'
        {
            ValueName = 'DenyDeviceClassesRetroactive'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs'
        {
            ValueName = 'DenyDeviceIDs'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDsRetroactive'
        {
            ValueName = 'DenyDeviceIDsRetroactive'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses\1'
        {
            ValueName = '1'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses'
            ValueData = '{6bdd1fc1-810f-11d0-bec7-08002be2092f}'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses\2'
        {
            ValueName = '2'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses'
            ValueData = '{d48179be-ec20-11d1-b6b8-00c04fa372a7}'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses\3'
        {
            ValueName = '3'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses'
            ValueData = '{c06ff265-ae09-48f0-812c-16753d7cba83}'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses\4'
        {
            ValueName = '4'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceClasses'
            ValueData = '{7ebefbc0-3200-11d2-b4c2-00a0C9697d07}'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs\1'
        {
            ValueName = '1'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs'
            ValueData = 'PCI\CC_0C0A'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses'
        {
            ValueName = 'AllowUserDeviceClasses'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses\1'
        {
            ValueName = '1'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses'
            ValueData = '{4D36E979-E325-11CE-BFC1-08002BE10318}'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses\2'
        {
            ValueName = '2'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses'
            ValueData = '{4658ee7e-f050-11d1-b6bd-00c04fa372a7}'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses\3'
        {
            ValueName = '3'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses'
            ValueData = '{49ce6ac8-6f86-11d2-ble5-0080c72e74a2}'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses\4'
        {
            ValueName = '4'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses'
            ValueData = '{4d36e97a-e325-11ce-bfc1-08002be10318}'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses\5'
        {
            ValueName = '5'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\DriverInstall\Restrictions\AllowUserDeviceClasses'
            ValueData = '{51AC4581-3DEB-49E2-8C32-61410DBDEE6}'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\Explorer\ShowHibernateOption'
        {
            ValueName = 'ShowHibernateOption'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\Explorer'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider\AllowCertificatesWithNoEKU'
        {
            ValueName = 'AllowCertificatesWithNoEKU'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider'
            ValueData = 0
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider\EnumerateECCCerts'
        {
            ValueName = 'EnumerateECCCerts'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider\AllowIntegratedUnblock'
        {
            ValueName = 'AllowIntegratedUnblock'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider\AllowSignatureOnlyKeys'
        {
            ValueName = 'AllowSignatureOnlyKeys'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider'
            ValueData = 0
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider\IntegratedUnblockPromptString'
        {
            ValueName = 'IntegratedUnblockPromptString'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\SmartCardCredentialProvider'
            ValueData = 'The system could not log you on. The smart card is blocked. Please contact the Help Desk for instructions on how to unblock your smart card.'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules\MinPinLength'
        {
            ValueName = 'MinPinLength'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules'
            ValueData = 8
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules\MaxRepeatChar'
        {
            ValueName = 'MaxRepeatChar'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules'
            ValueData = 2
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules\MaxSortedSequenceChar'
        {
            ValueName = 'MaxSortedSequenceChar'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules'
            ValueData = 2
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules\Filter'
        {
            ValueName = 'Filter'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules'
            ValueData = '([a-zA-Z0-9]*)'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules\MinNumeric'
        {
            ValueName = 'MinNumeric'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules\MinLowercase'
        {
            ValueName = 'MinLowercase'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules\MaxPinLength'
        {
            ValueName = 'MaxPinLength'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\PinRules'
            ValueData = 14
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient\SiteLock'
        {
            ValueName = 'SiteLock'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Wow6432Node\Microsoft\CLM\v1.0\SmartCardClient'
            ValueData = 'lab.demogods.com'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Google\Update\DisableAutoUpdateChecksCheckboxValue' 
        {
            ValueName = 'DisableAutoUpdateChecksCheckboxValue'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Google\Update'
            ValueData = 0
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Google\Update\UpdateDefault'
        {
            ValueName = 'UpdateDefault'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Google\Update'
            ValueData = 1
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\System\CurrentControlSet\Control\Session Manager\SubSystems\optional'
        {
            ValueName = 'Optional'
            ValueType = 'String'
            Key = 'HKEY_LOCAL_MACHINE:\System\CurrentControlSet\Control\Session Manager\SubSystems'
            ValueData = ''
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\System\CurrentControlSet\Control\Lsa\DisableDomainCreds'
        {
            ValueName = 'DisableDomainCreds'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\System\CurrentControlSet\Control\Lsa'
            ValueData = '1'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\WAU'
        {
            ValueName = 'WAU'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer'
            ValueData = '1'
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity\Enabled'
        {
            ValueName = 'Enabled'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity'
            ValueData = '0'              
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard\HVCIMATRequired'
        {
            ValueName = 'HVCIMATRequired'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard'
            ValueData = '0'              
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\TestHooks\XamlCredUIAvailable'
        {
            ValueName = 'XamlCredUIAvailable'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\TestHooks'
            ValueData = '0'              
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SL\UserOperations'
        {
            ValueName = 'UserOperations'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SL'
            ValueData = '1'              
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters\NoNameReleaseOnDemand'
        {
            ValueName = 'NoNameReleaseOnDemand'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters'
            ValueData = '1'              
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\EventLog\Application\Retention'
        {
            ValueName = 'Retention'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\EventLog\Application'
            ValueData = '0'              
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\EventLog\Security\Retention'
        {
            ValueName = 'Retention'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\EventLog\Security'
            ValueData = '0'              
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\EventLog\System\Retention'
        {
            ValueName = 'Retention'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SYSTEM\CurrentControlSet\Services\EventLog\System'
            ValueData = '0'              
        }

        Registry 'Registry: HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\EncryptionContextMenu'
        {
            Ensure = 'Present'
            ValueName = 'EncryptionContextMenu'
            ValueType = 'Dword'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
            ValueData = '2'              
        }

        Registry 'AllowTelemetry'
        {
            Ensure = 'Present'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection'
            ValueName = 'AllowTelemetry'
            ValueData = '0'
            ValueType = 'Dword'
        }

        Registry 'TaskbarDa'
        {
            Ensure = 'Present'
            Key = 'HKEY_LOCAL_MACHINE:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
            ValueName = 'TaskbarDa'
            ValueData = '0'
            ValueType = 'Dword'
        }

        Registry 'AllowNewsAndInterests'
        {
            Ensure = 'Present'
            Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Dsh'
            ValueName = 'AllowNewsAndInterests'
            ValueData = '0'
            ValueType = 'Dword'
        }

        Registry 'WindowsFeedbackExperienceProgram' 
        {
        Ensure = 'Present'
        Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo'
        ValueName = 'Enabled'
        ValueData = '0'
        ValueType = 'Dword'
        } 

        Registry 'AllowCortana' 
        {
        Ensure = 'Present'
        Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\Windows Search'
        ValueName = 'AllowCortana'
        ValueData = '0'
        ValueType = 'Dword'
        }
            
        Registry 'Cortana' 
        {
        Ensure = 'Present'
        Key = 'HKEY_LOCAL_MACHINE:\System\CurrentControlSet\Services\xbgm'
        ValueName = 'Start'
        ValueData = '4'
        ValueType = 'Dword'
        }

        Registry 'AllowgameDVR' 
        {
        Ensure = 'Present'
        Key = 'HKEY_LOCAL_MACHINE:\Software\Policies\Microsoft\Windows\GameDVR'
        ValueName = 'AllowgameDVR'
        ValueData = '4'
        ValueType = 'Dword'
        }

        Registry 'DisableWindowsFeedbackExperience' 
        {
        Ensure = 'Present'
        Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion'
        ValueName = 'AdvertisingInfo'
        ValueData = '0'
        ValueType = 'Dword'
        }
         
        Registry 'DisablesWebSearchinStartMenu' 
        {
        Ensure = 'Present'
        Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\Windows Search'
        ValueName = 'DisableWebSearch'
        ValueData = '1'
        ValueType = 'Dword'
        }

        Registry 'BingSearchEnabled' 
        {
        Ensure = 'Present'
        Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search'
        ValueName = 'BingSearchEnabled'
        ValueData = '0'
        ValueType = 'Dword'
        }
}
