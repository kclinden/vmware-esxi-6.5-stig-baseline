control "V-94499" do
  title "The ESXi host must allow only the ISSM (or individuals or roles
appointed by the ISSM) to select which auditable events are to be audited."
  desc  "Without establishing what types of events occurred, it would be
difficult to establish, correlate, and investigate the events leading up to an
outage or attack."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000063-VMM-000310"
  tag "gid": "V-94499"
  tag "rid": "SV-104329r1_rule"
  tag "stig_id": "ESXI-65-100030"
  tag "fix_id": "F-100615r1_fix"
  tag "cci": ["CCI-000171"]
  tag "nist": ["AU-12 b", "Rev_4"]
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
  tag "check": "From the vSphere Client select the ESXi host and go to
Configuration >> Advanced Settings.  Select the \"Config.HostAgent.log.level\"
value and verify it is set to the default level of \"info\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.log.level

If the \"Config.HostAgent.log.level\" value is not set to \"info\", this is a
finding.

Note: Verbose logging level is acceptable for troubleshooting purposes."
  tag "fix": "From the vSphere Client select the ESXi host and go to
Configuration >> Advanced Settings.  Select the \"Config.HostAgent.log.level\"
value and configure it to \"info\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.log.level |
Set-AdvancedSetting -Value \"info\""
end

