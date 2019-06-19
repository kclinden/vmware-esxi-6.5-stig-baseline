control "V-94491" do
  title "The ESXi host must enable lockdown mode to restrict remote access."
  desc  "Enabling lockdown mode disables direct access to an ESXi host
requiring the host be managed remotely from vCenter Server. This is done to
ensure the roles and access controls implemented in vCenter are always enforced
and users cannot bypass them by logging into a host directly. By forcing all
interaction to occur through vCenter Server, the risk of someone inadvertently
attaining elevated privileges or performing tasks that are not properly audited
is greatly reduced.

    Note: In strict lockdown mode the DCUI service is stopped. If the
connection to vCenter Server is lost and the vSphere Web Client is no longer
available, the ESXi host becomes inaccessible.
  "
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000123-VMM-000620"
  tag "gid": "V-94491"
  tag "rid": "SV-104321r1_rule"
  tag "stig_id": "ESXI-65-100001"
  tag "fix_id": "F-100607r1_fix"
  tag "cci": ["CCI-001682"]
  tag "nist": ["AC-2 (2)", "Rev_4"]
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
  tag "check": "For environments that do not use vCenter server to manage ESXi,
this is not applicable.

From the vSphere Web Client select the ESXi host and go to Manage >> Settings
>> System >> Security Profile.  Scroll down to \"Lockdown Mode\" and verify it
is set to Enabled (Normal or Strict).

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Select Name,@{N=\"Lockdown\";E={$_.Extensiondata.Config.LockdownMode}}

If \"Lockdown Mode\" is disabled, this is a finding."
  tag "fix": "From the vSphere Web Client, select the ESXi Host and go to
Manage >> Settings >> System >> Security Profile.  Click edit on \"Lockdown
Mode\" and set to Enabled (Normal or Strict).

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

$level = \"lockdownNormal\" OR \"lockdownStrict\"
$vmhost = Get-VMHost -Name <hostname> | Get-View
$lockdown = Get-View $vmhost.ConfigManager.HostAccessManager
$lockdown.ChangeLockdownMode($level)"

command = '(Get-VMHost).Extensiondata.Config.LockdownMode'
describe powercli_command(command) do
  its('stdout.strip') { should_not match "lockdownDisabled" }
end

end
