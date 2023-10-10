Configuration 'XOAPDemoConfigurationDSC'
{
	Import-DSCResource -Module 'XOAPDemoConfigurationDSC' -Name 'XOAP_Defender' -ModuleVersion '0.0.1'

	Node 'XOAPDemoConfigurationDSC'
	{
        XOAP_Defender 'Example'
        {
        }
    }
}
XOAPDemoConfigurationDSC -OutputPath 'C:\XOAPDemoConfigurationDSC'

