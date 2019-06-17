control "V-94509" do
  title "The ESXi host must require individuals to be authenticated with an
individual authenticator prior to using a group authenticator by restricting
use of Active Directory ESX Admin group membership."
  desc  "When adding ESXi hosts to Active Directory, if the group \"ESX
Admins\" exists, all user/group accounts assigned to the group will have full
administrative access to the host. Discretion should be used when managing
membership to the \"ESX Admins\" group."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000109-VMM-000550"
  tag "gid": "V-94509"
  tag "rid": "SV-104339r1_rule"
  tag "stig_id": "ESXI-65-100039"
  tag "fix_id": "F-100625r1_fix"
  tag "cci": ["CCI-000770"]
  tag "nist": ["IA-2 (5)", "Rev_4"]
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
user accounts, other than \"root\" and/or \"vpxuser\", this is not applicable.

From the vSphere Client select the ESXi host and go to Configuration >>
Advanced Settings.  Select the
\"Config.HostAgent.plugins.hostsvc.esxAdminsGroup\" value and verify it is not
set to \"ESX Admins\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name
Config.HostAgent.plugins.hostsvc.esxAdminsGroup

For systems that do not use Active Directory and do have local user accounts,
other than \"root\" and/or \"vpxuser\", this is a finding.

If the \"Config.HostAgent.plugins.hostsvc.esxAdminsGroup\" value is set to
\"ESX Admins\", this is a finding."
  tag "fix": "From the vSphere Client select the ESXi host and go to
Configuration >> Advanced Settings.  Select the
\"Config.HostAgent.plugins.hostsvc.esxAdminsGroup\" value and configure it to
an Active Directory group other than \"ESX Admins\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name
Config.HostAgent.plugins.hostsvc.esxAdminsGroup | Set-AdvancedSetting -Value
<AD Group>"
end

