configuration XOAPDemoConfigurationDSC
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-Module XOAPDemoConfigurationDSC
    Import-DSCResource -ModuleName XOAPDemoConfigurationDSC

    Node $NodeName
    {

        $moduleRoot = [io.path]::GetDirectoryName((Get-Module XOAPDemoConfigurationDSC).Path)
        #$examples = "$moduleRoot\Examples"

        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

    }
}

