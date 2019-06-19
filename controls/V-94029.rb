control "V-94029" do
  title "The ESXi host must set a timeout to automatically disable idle
sessions after 10 minutes."
  desc  "If a user forgets to log out of their SSH session, the idle connection
will remains open indefinitely, increasing the potential for someone to gain
privileged access to the host.  The ESXiShellInteractiveTimeOut allows you to
automatically terminate idle shell sessions."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000163-VMM-000700"
  tag "gid": "V-94029"
  tag "rid": "SV-104115r1_rule"
  tag "stig_id": "ESXI-65-000041"
  tag "fix_id": "F-100277r1_fix"
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
UserVars.ESXiShellInteractiveTimeOut value and verify it is set to 600 (10
Minutes).

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellInteractiveTimeOut

If the UserVars.ESXiShellInteractiveTimeOut setting is not set to 600, this is
a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings. Click Edit and select the
UserVars.ESXiShellInteractiveTimeOut value and configure it to 600.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellInteractiveTimeOut |
Set-AdvancedSetting -Value 600"

command = '(Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellInteractiveTimeOut).Value'
describe powercli_command(command) do
  its('stdout.strip') { should eq "600" }
end

end
