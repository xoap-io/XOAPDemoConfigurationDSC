Configuration 'XOAP_PSModules'
{
    Import-DscResource -ModuleName 'PowerShellModule' -ModuleVersion '0.3'

        PSModuleResource 'AWSPowerShell'
         {
             Ensure = 'present'
             Module_Name = 'AWSPowerShell'
             RequiredVersion = '4.1.388'
         }

         PSModuleResource 'Pester'
         {
             Ensure = 'present'
             Module_Name = 'Pester'
             RequiredVersion = '5.5.0'
         }

         PSModuleResource 'ChocolateyGet'
         {
             Ensure = 'present'
             Module_Name = 'ChocolateyGet'
             RequiredVersion = '4.1.0'
         }

         PSModuleResource 'Evergreen'
         {
             Ensure = 'present'
             Module_Name = 'Evergreen'
             RequiredVersion = '2307.816'
         }

         PSModuleResource 'Sampler'
         {
             Ensure = 'present'
             Module_Name = 'Sampler'
             RequiredVersion = '0.116.5'
         }
}
