control "V-94007" do
  title "The ESXi host must produce audit records containing information to
establish what type of events occurred."
  desc  "Without establishing what types of events occurred, it would be
difficult to establish, correlate, and investigate the events leading up to an
outage or attack."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000037-VMM-000150"
  tag "gid": "V-94007"
  tag "rid": "SV-104093r1_rule"
  tag "stig_id": "ESXI-65-000030"
  tag "fix_id": "F-100255r1_fix"
  tag "cci": ["CCI-000130"]
  tag "nist": ["AU-3", "Rev_4"]
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
Configure >> System >> Advanced System Settings.  Select the
Config.HostAgent.log.level value and verify it is set to \"info\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.log.level

If the Config.HostAgent.log.level setting is not set to info, this is a finding.

Note: Verbose logging level is acceptable for troubleshooting purposes."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings. Click Edit and select the
Config.HostAgent.log.level value and configure it to \"info\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.log.level |
Set-AdvancedSetting -Value \"info\""
end

