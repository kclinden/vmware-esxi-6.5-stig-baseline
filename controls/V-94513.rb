control "V-94513" do
  title "The ESXi host must automatically terminate a user session after
inactivity timeouts have expired or at shutdown by setting an idle timeout."
  desc  "If a user forgets to log out of their SSH session, the idle connection
will remains open indefinitely, increasing the potential for someone to gain
privileged access to the host.  The \"ESXiShellInteractiveTimeOut\" value
allows you to automatically terminate idle shell sessions."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000279-VMM-001010"
  tag "gid": "V-94513"
  tag "rid": "SV-104343r1_rule"
  tag "stig_id": "ESXI-65-100041"
  tag "fix_id": "F-100629r1_fix"
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
Configuration >> Advanced Settings.  Select the\"
UserVars.ESXiShellInteractiveTimeOut\" value and verify it is set to \"600\"
(10 Minutes).

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellInteractiveTimeOut

If the \"UserVars.ESXiShellInteractiveTimeOut\" value is not set to \"600\",
this is a finding."
  tag "fix": "From the vSphere Client select the ESXi Host and go to
Configuration >> Advanced Settings.  Select the
\"UserVars.ESXiShellInteractiveTimeOut\" value and configure it to \"600\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellInteractiveTimeOut |
Set-AdvancedSetting -Value 600"
end

