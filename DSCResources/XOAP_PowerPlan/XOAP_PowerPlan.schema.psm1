Configuration 'XOAP_PowerPlan'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'ComputerManagementDSC' -ModuleVersion '9.0.0'

        PowerPlan 'SetPlanHighPerformance'
        {
            IsSingleInstance = 'Yes'
            Name             = 'High performance'
        }
}
