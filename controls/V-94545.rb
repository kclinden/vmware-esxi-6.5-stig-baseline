control "V-94545" do
  title "The ESXi host must implement replay-resistant authentication
mechanisms for network access to non-privileged accounts by using the vSphere
Authentication Proxy."
  desc  "If you configure your host to join an Active Directory domain using
Host Profiles the Active Directory credentials are saved in the host profile
and are transmitted over the network. To avoid having to save Active Directory
credentials in the Host Profile and to avoid transmitting Active Directory
credentials over the network use the vSphere Authentication Proxy."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000113-VMM-000570"
  tag "gid": "V-94545"
  tag "rid": "SV-104375r1_rule"
  tag "stig_id": "ESXI-65-300038"
  tag "fix_id": "F-100661r1_fix"
  tag "cci": ["CCI-001942"]
  tag "nist": ["IA-2 (9)", "Rev_4"]
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "For systems that do not use Active Directory and have no local
user accounts, other than root and/or vpxuser, this is not applicable.

From the vSphere Client go to Home >> Host Profiles >> and select a Host
Profile to edit.  View the settings under Authentication Configuration >>
Active Directory Configuration >> JoinDomainMethod.  Verify the method used to
join hosts to a domain is set to \"Use vSphere Authentication Proxy to add the
host to domain\".

or

From a PowerCLI command prompt while connected to vCenter run the following
command:

Get-VMHost | Select Name, ` @{N=\"HostProfile\";E={$_ | Get-VMHostProfile}}, `
@{N=\"JoinADEnabled\";E={($_ |
Get-VmHostProfile).ExtensionData.Config.ApplyProfile.Authentication.ActiveDirectory.Enabled}},
` @{N=\"JoinDomainMethod\";E={(($_ |
Get-VMHostProfile).ExtensionData.Config.ApplyProfile.Authentication.ActiveDirectory
| Select -ExpandProperty Policy | Where {$_.Id -eq
\"JoinDomainMethodPolicy\"}).Policyoption.Id}}

Verify if \"JoinADEnabled\" is \"True\" then \"JoinDomainMethod\" should be
\"FixedCAMConfigOption\".

For systems that do not use Active Directory and do have local user accounts,
other than \"root\" and/or \"vpxuser\", this is a finding.

If vSphere Authentication Proxy is not used to join hosts to an Active
Directory domain, this is a finding."
  tag "fix": "When using host profiles do the following:

From the vSphere Client go to Home >> Host Profiles >> and select a Host
Profile to edit.  View the settings under Authentication Configuration >>
Active Directory Configuration >> JoinDomainMethod.  Set the method used to
join hosts to a domain to \"Use vSphere Authentication Proxy to add the host to
domain\" and provide the IP address of the vSphere Authentication Proxy server.

To join a host to Active Directory manually without host profiles do the
following:

From the vSphere Client select the ESXi host and go to Configuration >>
Authentication Services.  Click \"Properties\" and change the \"Directory
Service Type\" to \"Active Directory\", enter the domain to join, check \"Use
vSphere Authentication Proxy\" and enter the proxy server address then click
\"Join Domain\"."
end

