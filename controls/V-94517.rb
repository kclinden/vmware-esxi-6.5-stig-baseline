control "V-94517" do
  title "The ESXi host must automatically terminate a user session after
inactivity timeouts have expired or at shutdown."
  desc  "When the Direct console user interface (DCUI) is enabled and logged in
it should be automatically logged out if left logged on to avoid unauthorized
privilege gains.  The \"DcuiTimeOut\" value defines a window of time after
which the DCUI will be logged off."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000279-VMM-001010"
  tag "gid": "V-94517"
  tag "rid": "SV-104347r1_rule"
  tag "stig_id": "ESXI-65-100043"
  tag "fix_id": "F-100633r1_fix"
  tag "cci": ["CCI-002361"]
  tag "nist": ["AC-12", "Rev_4"]
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
Configuration >> Advanced Settings.  Select the \"UserVars.DcuiTimeOut\" value
and verify it is set to \"600\" (10 Minutes).

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name UserVars.DcuiTimeOut

If the \"UserVars.DcuiTimeOut\" setting is not set to \"600\", this is a
finding."
  tag "fix": "From the vSphere Client select the ESXi host and go to
Configuration >> Advanced Settings.  Select the \"UserVars.DcuiTimeOut\" value
and configure it to \"600\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name UserVars.DcuiTimeOut |
Set-AdvancedSetting -Value 600"
end

