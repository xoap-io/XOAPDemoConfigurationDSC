# does not work
Configuration 'XOAP_AppxPackages'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'DSCR_AppxPackage' -ModuleVersion '0.3.0'

        $AppxPackagesList = @(
            '*Microsoft.3DBuilder*'
            '*Microsoft.549981C3F5F10*'   #Cortana app
            '*Microsoft.Asphalt8Airborne*'
            '*Microsoft.BingFinance*'
            '*Microsoft.BingFoodAndDrink*'            
            '*Microsoft.BingHealthAndFitness*'         
            '*Microsoft.BingNews*'
            '*Microsoft.BingSports*'
            '*Microsoft.BingTranslator*'
            '*Microsoft.BingTravel* '
            '*Microsoft.BingWeather*'
            '*Microsoft.GetHelp*'
            '*Microsoft.Getstarted*'   # Cannot be uninstalled in Windows 11
            '*Microsoft.Messaging*'
            '*Microsoft.Microsoft3DViewer*'
            '*Microsoft.MicrosoftOfficeHub*'
            '*Microsoft.MicrosoftPowerBIForWindows*'
            '*Microsoft.MicrosoftSolitaireCollection*'
            '*Microsoft.MicrosoftStickyNotes*'
            '*Microsoft.MixedReality.Portal*'
            '*Microsoft.NetworkSpeedTest*'
            '*Microsoft.News*'
            '*Microsoft.Office.OneNote*'
            '*Microsoft.Office.Sway*'
            '*Microsoft.OneConnect*'
            '*Microsoft.Print3D*'
            '*Microsoft.RemoteDesktop*'
            '*Microsoft.SkypeApp*'
            '*Microsoft.Todos*'
            '*Microsoft.WindowsAlarms*'
            '*Microsoft.WindowsFeedbackHub*'
            '*Microsoft.WindowsMaps*'
            '*Microsoft.WindowsSoundRecorder*'
            '*Microsoft.ZuneVideo*'
            '*MicrosoftTeams*'
            '*ACGMediaPlayer*'
            '*ActiproSoftwareLLC*'
            '*AdobeSystemsIncorporated.AdobePhotoshopExpress*'
            '*Amazon.com.Amazon*'
            '*Asphalt8Airborne*' 
            '*AutodeskSketchBook*'
            '*CaesarsSlotsFreeCasino*'
            '*Clipchamp.Clipchamp*'
            '*COOKINGFEVER*'
            '*CyberLinkMediaSuiteEssentials*'
            '*DisneyMagicKingdoms*'
            '*Dolby*'
            '*DrawboardPDF*'
            '*Duolingo-LearnLanguagesforFree*'
            '*EclipseManager*'
            '*Facebook*'
            '*FarmVille2CountryEscape*'
            '*fitbit*'
            '*Flipboard*'
            '*HiddenCity*'
            '*HULULLC.HULUPLUS*'
            '*iHeartRadio*'
            '*king.com.BubbleWitch3Saga*'
            '*king.com.CandyCrushSaga*'
            '*king.com.CandyCrushSodaSaga*'
            '*LinkedInforWindows*'
            '*MarchofEmpires*'
            '*Netflix*'
            '*NYTCrossword*'
            '*OneCalendar*'
            '*PandoraMediaInc*'
            '*PhototasticCollage*'
            '*PicsArt-PhotoStudio*'
            '*Plex*'
            '*PolarrPhotoEditorAcademicEdition*'
            '*Royal Revolt*'
            '*Shazam*'
            '*Sidia.LiveWallpaper*'
            '*SlingTV*'
            '*Speed Test*'
            '*Spotify*'
            '*TuneInRadio*'
            '*Twitter*'
            '*Viber*'
            '*WinZipUniversal*'
            '*Wunderlist*'
            '*XING*'
            '*Microsoft.GamingApp*'                    # Modern Xbox Gaming App, required for installing some PC games
            #'*Microsoft.MSPaint*'                      # Paint 3D
            #'*Microsoft.People*'                       # Required with Mail & Calendar
            '*Microsoft.PowerAutomateDesktop*'
            '*Microsoft.ScreenSketch*'                 # Snipping Tool
            '*Microsoft.Whiteboard*'                   # Only preinstalled on devices with touchscreen and/or pen support
            #'*Microsoft.Windows.Photos*'
            #'*Microsoft.WindowsCalculator*'
            '*Microsoft.WindowsCamera*'
            '*Microsoft.windowscommunicationsapps*'    # Mail & Calendar
            #'*Microsoft.WindowsStore*'                 # Microsoft Store, WARNING: This app cannot be reinstalled!
            '*Microsoft.Xbox.TCUI*'
            '*Microsoft.XboxApp*'                      # Old Xbox Console Companion App, no longer preinstalled
            '*Microsoft.XboxGameOverlay*'
            '*Microsoft.XboxGamingOverlay*'
            '*Microsoft.XboxIdentityProvider*'
            '*Microsoft.XboxSpeechToTextOverlay*'      # WARNING: This app cannot be reinstalled!
            '*Microsoft.YourPhone*'                    # Phone link
            '*Microsoft.ZuneMusic*'                    # Modern Media Player
        )

        foreach ($AppxPackage in $AppxPackagesList.FullName) {
            cAppxPackageSet 'Remove$AppxPackage'
            {
                Ensure = 'Absent'
                Name = '$AppxPackage'
            }
        }
}
