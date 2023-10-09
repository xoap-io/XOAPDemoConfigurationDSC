Configuration 'XOAP_UserSettings'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'UserRegistryDSC' -ModuleVersion '0.1.3'
                
        UserRegistry 'PreventCodecDownload' 
        {
            Key       = 'HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer'
            ValueName = 'PreventCodecDownload'
            ValueType = 'Dword'
            ValueData = '1'
        }

        # XOAPResourceDownloader 'wallpaper' 
        # {
        #     ConfigurationManagementUrl = 'https://configuration-management.api.xoap.io' 
        #     Ensure = 'Present' 
        #     ResourceDownload = 'f6043480-29f7-405d-80a0-0a7acc243739' 
        #     DestinationFilename = 'xoap_automation_forces_skull_4k_background.png' 
        #     DestinationPath = 'c:\windows\web\wallpaper\windows' 
        #     Overwrite = $true 
        # }

        UserRegistry 'wallpaper-reg' 
        {
            Key = 'HKEY_CURRENT_USER\Control Panel\Desktop' 
            ValueData = 'c:\windows\web\wallpaper\windows\xoap_automation_forces_skull_4k_background.png' 
            ValueName = 'Wallpaper' 
            ValueType = 'STRING' 
        }

##

        Registry 'AllowCortana'
        {
                Ensure = 'Present'
                Key = 'HKEY_LOCAL_MACHINE:\SOFTWARE\Policies\Microsoft\Windows\Windows Search'
                ValueName = 'AllowCortana'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'TaskbarMn'
        {
                Ensure = 'Present'
                Key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
                ValueName = 'TaskbarMn'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'SubscribedContent-338387Enabled'
        {
                Ensure = 'Present'
                Key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager'
                ValueName = 'SubscribedContent-338387Enabled'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'AdvertisingInfo'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo'
                ValueName = 'Enabled'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'TailoredExperiencesWithDiagnosticDataEnabled'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Windows\CurrentVersion\Privacy'
                ValueName = 'TailoredExperiencesWithDiagnosticDataEnabled'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'HasAccepted'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy'
                ValueName = 'HasAccepted'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'TIPC'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Input\TIPC'
                ValueName = 'Enabled'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'RestrictImplicitInkCollection'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\InputPersonalization'
                ValueName = 'RestrictImplicitInkCollection'
                ValueData = '1'
                ValueType = 'Dword'
        }

        Registry 'RestrictImplicitTextCollection'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\InputPersonalization'
                ValueName = 'RestrictImplicitTextCollection'
                ValueData = '1'
                ValueType = 'Dword'
        }

        Registry 'HarvestContacts'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\InputPersonalization\TrainedDataStore'
                ValueName = 'HarvestContacts'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'AcceptedPrivacyPolicy'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Personalization\Settings'
                ValueName = 'AcceptedPrivacyPolicy'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'SubscribedContent-310093Enabled'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager'
                ValueName = 'SubscribedContent-310093Enabled'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'SubscribedContent-338388Enabled'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager'
                ValueName = 'SubscribedContent-338388Enabled'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'SubscribedContent-338389Enabled'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager'
                ValueName = 'SubscribedContent-338389Enabled'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'SubscribedContent-338393Enabled'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager'
                ValueName = 'SubscribedContent-338393Enabled'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'ScoobeSystemSettingEnabled'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement'
                ValueName = 'ScoobeSystemSettingEnabled'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'ShowSyncProviderNotifications'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
                ValueName = 'ShowSyncProviderNotifications'
                ValueData = '0'
                ValueType = 'Dword'
        }

        Registry 'DisableSearchBoxSuggestions'
        {
                Ensure = 'Present'
                Key = 'HKEY_CURRENT_USER:\Software\Policies\Microsoft\Windows\Explorer'
                ValueName = 'DisableSearchBoxSuggestions'
                ValueData = '1'
                ValueType = 'Dword'
        }
}
