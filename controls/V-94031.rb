control "V-94031" do
  title "The ESXi host must terminate shell services after 10 minutes."
  desc  "When the ESXi Shell or SSH services are enabled on a host they will
run indefinitely.  To avoid having these services left running set the
ESXiShellTimeOut.  The ESXiShellTimeOut defines a window of time after which
the ESXi Shell and SSH services will automatically be terminated."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000163-VMM-000700"
  tag "gid": "V-94031"
  tag "rid": "SV-104117r1_rule"
  tag "stig_id": "ESXI-65-000042"
  tag "fix_id": "F-100279r1_fix"
  tag "cci": ["CCI-001133"]
  tag "nist": ["SC-10", "Rev_4"]
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
UserVars.ESXiShellTimeOut value and verify it is set to 600 (10 Minutes).

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellTimeOut

If the UserVars.ESXiShellTimeOut setting is not set to 600, this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings. Click Edit and select the
UserVars.ESXiShellTimeOut value and configure it to 600.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellTimeOut |
Set-AdvancedSetting -Value 600"
end

