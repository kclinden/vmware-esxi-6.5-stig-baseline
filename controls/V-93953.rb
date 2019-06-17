control "V-93953" do
  title "The ESXi host must verify the exception users list for lockdown mode."
  desc  "In vSphere you can add users to the Exception Users list from the
vSphere Web Client. These users do not lose their permissions when the host
enters lockdown mode. Usually you may want to add service accounts such as a
backup agent to the Exception Users list. Verify that the list of users who are
exempted from losing permissions is legitimate and as needed per your
environment. Users who do not require special permissions should not be
exempted from lockdown mode."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93953"
  tag "rid": "SV-104039r1_rule"
  tag "stig_id": "ESXI-65-000003"
  tag "fix_id": "F-100201r1_fix"
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
Configure >> System >> Security Profile.  Under lockdown mode review the
exception users list.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following script:

$vmhost = Get-VMHost | Get-View
$lockdown = Get-View $vmhost.ConfigManager.HostAccessManager
$lockdown.QueryLockdownExceptions()

If the Exception users list contains accounts that do not require special
permissions, this is a finding.

Note - This list is not intended for system administrator accounts but for
special circumstances such as a service account.

For environments that do not use vCenter server to manage ESXi, this is not
applicable."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Security Profile.  Under lockdown mode click Edit and
remove unnecessary users to the exceptions list."
end

