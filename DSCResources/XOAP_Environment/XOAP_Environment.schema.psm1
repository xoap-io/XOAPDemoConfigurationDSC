Configuration 'XOAP_Environment'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'

        Environment 'ManagedWithXOAP'
        {
            Name   = 'Managed with XOAP'
            Value  = 'True'
            Ensure = 'Present'
            Path   = $false
        }

        Environment 'Packer'
        {
            Name   = 'Packer'
            Value  = 'C:\Program Files\HashiCorp\Packer\packer.exe'
            Ensure = 'Present'
            Path   = $true
        }
}
