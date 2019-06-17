control "V-94069" do
  title "The virtual switch Promiscuous Mode policy must be set to reject on
the ESXi host."
  desc  "When promiscuous mode is enabled for a virtual switch all virtual
machines connected to the Portgroup have the potential of reading all packets
across that network, meaning only the virtual machines connected to that
Portgroup. Promiscuous mode is disabled by default on the ESXi Server, and this
is the recommended setting. Promiscous mode can be set at the vSwitch and/or
the Portgroup level. You can override switch level settings at the Portgroup
level."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94069"
  tag "rid": "SV-104155r1_rule"
  tag "stig_id": "ESXI-65-000061"
  tag "fix_id": "F-100317r1_fix"
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
  tag "check": "From the vSphere Web Client go to Configure >> Networking >>
Virtual Switches. View the properties on each virtual switch and port group and
verify \"Promiscuous Mode\" is set to reject.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VirtualSwitch | Get-SecurityPolicy
Get-VirtualPortGroup | Get-SecurityPolicy

If the \"Promiscuous Mode\" policy is set to accept, this is a finding."
  tag "fix": "From the vSphere Web Client go to Configure >> Networking >>
Virtual Switches. For each virtual switch and port group click Edit settings
and change \"Promiscuous Mode\" to reject.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VirtualSwitch | Get-SecurityPolicy | Set-SecurityPolicy -AllowPromiscuous
$false
Get-VirtualPortGroup | Get-SecurityPolicy | Set-SecurityPolicy
-AllowPromiscuousInherited $true"
end

