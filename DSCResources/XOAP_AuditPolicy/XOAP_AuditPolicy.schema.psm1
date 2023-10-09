Configuration 'XOAP_AuditPolicy'
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'ComputerManagementDSC' -ModuleVersion '9.0.0'
    Import-DSCResource -ModuleName 'AuditPolicyDSC' -ModuleVersion '1.4.0.0'

        AuditPolicySubcategory 'Audit: LogonSuccess' # Audit Logon successes
        {
            Name      = 'Logon'
            AuditFlag = 'Success'
            Ensure    = 'Present' 
        } 

        AuditPolicySubcategory 'Audit: LogonFailure' # Audit Logon failures
        {
            Name      = 'Logon'
            AuditFlag = 'Failure'
            Ensure    = 'Present'
        }

        AuditPolicySubcategory 'Audit: AuditPolicyChangeSuccess' # Audit polcy change successes
        {
            Name      = 'Audit Policy Change'
            AuditFlag = 'Success'
            Ensure    = 'Absent' 
        } 

        AuditPolicySubcategory 'Audit: AuditPolicyChangeFailure' # Audit policy change failures
        {
            Name      = 'Audit Policy Change'
            AuditFlag = 'Failure'
            Ensure    = 'Present'
        }

        AuditPolicySubcategory 'Audit: AuditAccountManageSuccess' # Audit account management successes
        {
            Name      = 'User Account Management'
            AuditFlag = 'Success'
            Ensure    = 'Present' 
        } 

        AuditPolicySubcategory 'Audit: AuditAccountManageFailure' # Audit account management failures
        {
            Name      = 'User Account Management'
            AuditFlag = 'Failure'
            Ensure    = 'Present'
        }

        AuditPolicySubcategory 'Audit: AuditLogonEventsSuccess' # Audit logon event successes
        {
            Name      = 'Other Account Logon Events'
            AuditFlag = 'Success'
            Ensure    = 'Present' 
        } 

        AuditPolicySubcategory 'Audit: AuditLogonEventsFailure' # Audit logon event failures
        {
            Name      = 'Other Account Logon Events'
            AuditFlag = 'Failure'
            Ensure    = 'Present'
        }
}
