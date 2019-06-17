control "V-94527" do
  title "The ESXi host must immediately disconnect or disable remote access to
the information system by disabling SSH."
  desc  "Client. The ESXi shell is accessible remotely using SSH by users with
the Administrator role. Under normal operating conditions, SSH access to the
host must be disabled as is the default.  As with the ESXi shell, SSH is also
intended only for temporary use during break-fix scenarios. SSH must therefore
be disabled under normal operating conditions and must only be enabled for
diagnostics or troubleshooting. Remote access to the host must therefore be
limited to the vSphere Client at all other times."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000298-VMM-001050"
  tag "gid": "V-94527"
  tag "rid": "SV-104357r1_rule"
  tag "stig_id": "ESXI-65-200035"
  tag "fix_id": "F-100643r1_fix"
  tag "cci": ["CCI-002322"]
  tag "nist": ["AC-17 (9)", "Rev_4"]
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
Configuration >> Security Profile.  Under \"Services\" select \"Edit\" and view
the \"SSH\" service and verify it is stopped.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-VMHostService | Where {$_.Label -eq \"SSH\"}

If the ESXi SSH service is running, this is a finding."
  tag "fix": "From the vSphere Client select the ESXi host and go to
Configuration >> Security Profile.  Under \"Services\" select \"Edit\" then
select the \"SSH\" service and click \"options\".  Change the service to
\"Start and stop manually\" and stop the service and click \"OK\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-VMHostService | Where {$_.Label -eq \"SSH\"} |
Set-VMHostService -Policy Off
Get-VMHost | Get-VMHostService | Where {$_.Label -eq \"SSH\"} |
Stop-VMHostService"
end

