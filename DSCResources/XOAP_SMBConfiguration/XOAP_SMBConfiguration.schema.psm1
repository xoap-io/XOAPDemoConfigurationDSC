Configuration 'XOAP_SmbConfiguration'
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'NetworkingDSC' -ModuleVersion '9.0.0'

        SmbServerConfiguration 'SmbServer'
        {
            IsSingleInstance                = 'Yes'
            AnnounceComment                 = 'SMB server hello'
            AnnounceServer                  = $true
            AsynchronousCredits             = 64
            AuditSmb1Access                 = $false
            AutoDisconnectTimeout           = 15
            AutoShareServer                 = $true
            AutoShareWorkstation            = $true
            CachedOpenLimit                 = 10
            DurableHandleV2TimeoutInSeconds = 180
            EnableAuthenticateUserSharing   = $false
            EnableDownlevelTimewarp         = $false
            EnableForcedLogoff              = $true
            EnableLeasing                   = $true
            EnableMultiChannel              = $true
            EnableOplocks                   = $true
            EnableSecuritySignature         = $false
            EnableSMB1Protocol              = $false
            EnableSMB2Protocol              = $true
            EnableStrictNameChecking        = $true
            EncryptData                     = $false
            IrpStackSize                    = 15
            KeepAliveTime                   = 2
            MaxChannelPerSession            = 32
            MaxMpxCount                     = 50
            MaxSessionPerConnection         = 16384
            MaxThreadsPerQueue              = 20
            MaxWorkItems                    = 1
            NullSessionPipes                = 'NullPipe'
            NullSessionShares               = 'NullShare'
            OplockBreakWait                 = 35
            PendingClientTimeoutInSeconds   = 120
            RejectUnencryptedAccess         = $true
            RequireSecuritySignature        = $false
            ServerHidden                    = $true
            Smb2CreditsMax                  = 2048
            Smb2CreditsMin                  = 128
            SmbServerNameHardeningLevel     = 0
            TreatHostAsStableStorage        = $false
            ValidateAliasNotCircular        = $true
            ValidateShareScope              = $true
            ValidateShareScopeNotAliased    = $true
            ValidateTargetName              = $true
        }
}
