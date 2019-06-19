control "V-94067" do
  title "The virtual switch MAC Address Change policy must be set to reject on
the ESXi host."
  desc  "If the virtual machine operating system changes the MAC address, it
can send frames with an impersonated source MAC address at any time. This
allows it to stage malicious attacks on the devices in a network by
impersonating a network adaptor authorized by the receiving network. This will
prevent VMs from changing their effective MAC address. It will affect
applications that require this functionality. This will also affect how a layer
2 bridge will operate. This will also affect applications that require a
specific MAC address for licensing. Reject MAC Changes can be set at the
vSwitch and/or the Portgroup level. You can override switch level settings at
the Portgroup level."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94067"
  tag "rid": "SV-104153r1_rule"
  tag "stig_id": "ESXI-65-000060"
  tag "fix_id": "F-100315r1_fix"
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
verify \"MAC Address Changes\" is set to reject.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VirtualSwitch | Get-SecurityPolicy
Get-VirtualPortGroup | Get-SecurityPolicy

If the \"MAC Address Changes\" policy is set to accept, this is a finding."
  tag "fix": "From the vSphere Web Client go to Configure >> Networking >>
Virtual Switches. For each virtual switch and port group click Edit settings
and change \"MAC Address Changes\" to reject.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VirtualSwitch | Get-SecurityPolicy | Set-SecurityPolicy -MacChanges $false
Get-VirtualPortGroup | Get-SecurityPolicy | Set-SecurityPolicy
-MacChangesInherited $true"

command1 = 'Get-VirtualSwitch | Get-SecurityPolicy | Select MacChanges -ExpandProperty MacChanges'
describe powercli_command(command1) do
  its('stdout.strip') { should_not match "False" }
end

command2 = 'Get-VirtualPortGroup | Get-SecurityPolicy | Select MacChangesInherited -ExpandProperty MacChangesInherited'
describe powercli_command(command2) do
  its('stdout.strip') { should match "True" }
end

end
