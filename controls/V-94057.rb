control "V-94057" do
  title "The ESXi host must disable Inter-VM transparent page sharing."
  desc  "Published academic papers have demonstrated that by forcing a flush
and reload of cache memory, it is possible to measure memory timings to try and
determine an AES encryption key in use on another virtual machine running on
the same physical processor of the host server if Transparent Page Sharing is
enabled between the two virtual machines. This technique works only in a highly
controlled system configured in a non-standard way that VMware believes would
not be recreated in a production environment.

    Even though VMware believes information being disclosed in real world
conditions is unrealistic, out of an abundance of caution upcoming ESXi Update
releases will no longer enable TPS between Virtual Machines by default (TPS
will still be utilized within individual VMs).
  "
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94057"
  tag "rid": "SV-104143r1_rule"
  tag "stig_id": "ESXI-65-000055"
  tag "fix_id": "F-100305r1_fix"
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
Configure >> System >> Advanced System Settings. Select the
Mem.ShareForceSalting value and verify it is set to 2.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Mem.ShareForceSalting

If the Mem.ShareForceSalting setting is not set to 2, this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings. Click Edit and select the
Mem.ShareForceSalting value and configure it to 2.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name Mem.ShareForceSalting |
Set-AdvancedSetting -Value 2"


command = '(Get-VMHost | Get-AdvancedSetting -Name Mem.ShareForceSalting).Value'
describe powercli_command(command) do
  its('stdout.strip') { should match "2" }
end


end
