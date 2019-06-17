control "V-93959" do
  title "The ESXi host must enforce the unlock timeout of 15 minutes after a
user account is locked out."
  desc  "By limiting the number of failed login attempts, the risk of
unauthorized access via user password guessing, otherwise known as
brute-forcing, is reduced. Limits are imposed by locking the account."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000329-VMM-001180"
  tag "gid": "V-93959"
  tag "rid": "SV-104045r1_rule"
  tag "stig_id": "ESXI-65-000006"
  tag "fix_id": "F-100207r1_fix"
  tag "cci": ["CCI-002238"]
  tag "nist": ["AC-7 b", "Rev_4"]
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
Security.AccountUnlockTime value and verify it is set to 900.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Security.AccountUnlockTime and verify it
is set to 900.

If the Security.AccountUnlockTime is set to a value other than 900, this is a
finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings. Click Edit and select the
Security.AccountUnlockTime value and configure it to 900.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name Security.AccountUnlockTime |
Set-AdvancedSetting -Value 900"
end

