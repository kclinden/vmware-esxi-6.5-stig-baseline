control "V-94015" do
  title "The ESXi host must disable the Managed Object Browser (MOB)."
  desc  "The Managed Object Browser (MOB) provides a way to explore the object
model used by the VMkernel to manage the host and enables configurations to be
changed as well. This interface is meant to be used primarily for debugging the
vSphere SDK, but because there are no access controls it could also be used as
a method obtain information about a host being targeted for unauthorized
access.  By default this is disabled for ESXi in version 6."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000095-VMM-000480"
  tag "gid": "V-94015"
  tag "rid": "SV-104101r1_rule"
  tag "stig_id": "ESXI-65-000034"
  tag "fix_id": "F-100263r1_fix"
  tag "cci": ["CCI-000381"]
  tag "nist": ["CM-7 a", "Rev_4"]
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
  tag "check": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings. Select the
Config.HostAgent.plugins.solo.enableMob value and verify it is set to false.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.plugins.solo.enableMob

If the Config.HostAgent.plugins.solo.enableMob setting is not set to false,
this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings. Click Edit and select the
Config.HostAgent.plugins.solo.enableMob value and configure it to false.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.plugins.solo.enableMob
| Set-AdvancedSetting -Value false"
end

