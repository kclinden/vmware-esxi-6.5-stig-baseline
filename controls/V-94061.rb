control "V-94061" do
  title "The ESXi host must configure the firewall to block network traffic by
default."
  desc  "In addition to service specific firewall rules ESXi has a default
firewall rule policy to allow or deny incoming and outgoing traffic.  Reduce
the risk of attack by making sure this is set to deny incoming and outgoing
traffic."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94061"
  tag "rid": "SV-104147r1_rule"
  tag "stig_id": "ESXI-65-000057"
  tag "fix_id": "F-100309r1_fix"
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
  tag "check": "From a PowerCLI command prompt while connected to the ESXi host
run the following command:

Get-VMHostFirewallDefaultPolicy

If the Incoming or Outgoing policies are True, this is a finding."
  tag "fix": "From a PowerCLI command prompt while connected to the ESXi host
run the following command:

Get-VMHostFirewallDefaultPolicy | Set-VMHostFirewallDefaultPolicy
-AllowIncoming $false -AllowOutgoing $false"
end

