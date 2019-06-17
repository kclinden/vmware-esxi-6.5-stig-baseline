control "V-94515" do
  title "The ESXi host must automatically terminate a user session after
inactivity timeouts have expired or at shutdown by setting an idle timeout on
shell services."
  desc  "When the ESXi Shell or SSH services are enabled on a host they will
run indefinitely.  To avoid having these services left running set the
\"ESXiShellTimeOut\" value.  The \"ESXiShellTimeOut\" value defines a window of
time after which the ESXi Shell and SSH services will automatically be
terminated."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000279-VMM-001010"
  tag "gid": "V-94515"
  tag "rid": "SV-104345r1_rule"
  tag "stig_id": "ESXI-65-100042"
  tag "fix_id": "F-100631r1_fix"
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
Configuration >> Advanced Settings.  Select the \"UserVars.ESXiShellTimeOut\"
value and verify it is set to \"600\" (10 Minutes).

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellTimeOut

If the \"UserVars.ESXiShellTimeOut\" value is not set to \"600\", this is a
finding."
  tag "fix": "From the vSphere Client select the ESXi Host and go to
Configuration >> Advanced Settings.  Select the \"UserVars.ESXiShellTimeOut\"
value and configure it to \"600\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellTimeOut |
Set-AdvancedSetting -Value 600"
end

