control "V-93957" do
  title "The ESXi host must enforce the limit of three consecutive invalid
logon attempts by a user."
  desc  "By limiting the number of failed login attempts, the risk of
unauthorized access via user password guessing, otherwise known as
brute-forcing, is reduced. Limits are imposed by locking the account."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000021-VMM-000050"
  tag "gid": "V-93957"
  tag "rid": "SV-104043r1_rule"
  tag "stig_id": "ESXI-65-000005"
  tag "fix_id": "F-100205r1_fix"
  tag "cci": ["CCI-000044"]
  tag "nist": ["AC-7 a", "Rev_4"]
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
Security.AccountLockFailures value and verify it is set to 3.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Security.AccountLockFailures and verify
it is set to 3.

If the Security.AccountLockFailures is set to a value other than 3, this is a
finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings. Click Edit and select the
Security.AccountLockFailures value and configure it to 3.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Security.AccountLockFailures |
Set-AdvancedSetting -Value 3"
end

