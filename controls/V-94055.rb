control "V-94055" do
  title "The ESXi host must enable bidirectional CHAP authentication for iSCSI
traffic."
  desc  "When enabled, vSphere performs bidirectional authentication of both
the iSCSI target and host. There is a potential for a MiTM attack, when not
authenticating both the iSCSI target and host, in which an attacker might
impersonate either side of the connection to steal data. Bidirectional
authentication mitigates this risk."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94055"
  tag "rid": "SV-104141r1_rule"
  tag "stig_id": "ESXI-65-000054"
  tag "fix_id": "F-100303r1_fix"
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
Configure >> Storage >> Storage Adapters >> Select the iSCSI adapter >>
Properties >> Authentication method and view the CHAP configuration and verify
CHAP is \"Required\" for target and host authentication.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-VMHostHba | Where {$_.Type -eq \"iscsi\"} | Select
AuthenticationProperties -ExpandProperty AuthenticationProperties

If iSCSI is not used, this is not a finding.

If iSCSI is used and CHAP is not set to \"Required\" for both the target and
host, this is a finding.

If iSCSI is used and unique CHAP secrets are not used for each host, this is a
finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> Storage >> Storage Adapters >> Select the iSCSI adapter >>
Properties >> Authentication and click the Edit button. Set Authentication
method to “Use bidirectional CHAP” and enter a unique secret for each traffic
flow direction.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-VMHostHba | Where {$_.Type -eq \"iscsi\"} | Set-VMHostHba
-ChapType Required -ChapName \"chapname\" -ChapPassword \"password\"
-MutualChapEnabled $true -MutualChapName \"mutualchapname\" -MutualChapPassword
\"mutualpassword\""
end

