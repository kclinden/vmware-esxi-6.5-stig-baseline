control "V-93951" do
  title "The ESXi host must verify the DCUI.Access list."
  desc  "Lockdown mode disables direct host access requiring that admins manage
hosts from vCenter Server.  However, if a host becomes isolated from vCenter
Server, the admin is locked out and can no longer manage the host. If you are
using normal lockdown mode, you can avoid becoming locked out of an ESXi host
that is running in lockdown mode, by setting DCUI.Access to a list of highly
trusted users who can override lockdown mode and access the DCUI. The DCUI is
not running in strict lockdown mode."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93951"
  tag "rid": "SV-104037r1_rule"
  tag "stig_id": "ESXI-65-000002"
  tag "fix_id": "F-100199r1_fix"
  tag "cci": ["CCI-000366"]
  tag "nist": ["CM-6 b", "Rev_4"]
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
Configure >> System >> Advanced System Settings.  Select the DCUI.Access value
and verify only the root user is listed.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name DCUI.Access and verify it is set to root.

If the DCUI.Access is not restricted to root, this is a finding.

Note: This list is only for local user accounts and should only contain the
root user.

For environments that do not use vCenter server to manage ESXi, this is not
applicable."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings.  Click Edit and select the
DCUI.Access value and configure it to root.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name DCUI.Access | Set-AdvancedSetting -Value
\"root\""

command = 'Get-VMHost | Get-AdvancedSetting -Name DCUI.Access'
describe powercli_command(command) do
  its('stdout.strip') { should match 'root' }
end
end
