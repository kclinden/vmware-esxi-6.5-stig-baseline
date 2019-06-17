control "V-94023" do
  title "The ESXi host must use the vSphere Authentication Proxy to protect
passwords when adding ESXi hosts to Active Directory."
  desc  "If you configure your host to join an Active Directory domain using
Host Profiles the Active Directory credentials are saved in the host profile
and are transmitted over the network. To avoid having to save Active Directory
credentials in the Host Profile and to avoid transmitting Active Directory
credentials over the network use the vSphere Authentication Proxy."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000104-VMM-000500"
  tag "gid": "V-94023"
  tag "rid": "SV-104109r1_rule"
  tag "stig_id": "ESXI-65-000038"
  tag "fix_id": "F-100271r1_fix"
  tag "cci": ["CCI-000764"]
  tag "nist": ["IA-2", "Rev_4"]
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
  tag "check": "From the vSphere Web Client go to Home >> Host Profiles >> and
select a Host Profile to edit. View the settings under Security and Services >>
Security Settings >> Authentication Configuration >> Active Directory
Configuration >> Join Domain Method. Verify the method used to join hosts to a
domain is set to \"Use vSphere Authentication Proxy to add the host to domain\".

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

Verify if JoinADEnabled is True then JoinDomainMethod should be
\"FixedCAMConfigOption\".

If you are not using Host Profiles to join active directory, this is not a
finding."
  tag "fix": "From the vSphere Web Client go to Home >> Host Profiles >> and
select a Host Profile to edit. View the settings under Security and Services >>
Security Settings >> Authentication Configuration >> Active Directory
Configuration >> Join Domain Method. Set the method used to join hosts to a
domain to \"Use vSphere Authentication Proxy to add the host to domain\" and
provide the IP address of the vSphere Authentication Proxy server."
end

