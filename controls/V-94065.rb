control "V-94065" do
  title "The virtual switch Forged Transmits policy must be set to reject on
the ESXi host."
  desc  "If the virtual machine operating system changes the MAC address, the
operating system can send frames with an impersonated source MAC address at any
time. This allows an operating system to stage malicious attacks on the devices
in a network by impersonating a network adaptor authorized by the receiving
network.

    This means the virtual switch does not compare the source and effective MAC
addresses.

    To protect against MAC address impersonation, all virtual switches should
have forged transmissions set to Reject. Reject Forged Transmit can be set at
the vSwitch and/or the Portgroup level. You can override switch level settings
at the Portgroup level.
  "
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94065"
  tag "rid": "SV-104151r1_rule"
  tag "stig_id": "ESXI-65-000059"
  tag "fix_id": "F-100313r1_fix"
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
verify \"Forged Transmits\" is set to reject.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VirtualSwitch | Get-SecurityPolicy
Get-VirtualPortGroup | Get-SecurityPolicy

If the \"Forged Transmits\" policy is set to accept, this is a finding."
  tag "fix": "From the vSphere Web Client go to Configure >> Networking >>
Virtual Switches. For each virtual switch and port group click Edit settings
and change \"Forged Transmits\" to reject.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VirtualSwitch | Get-SecurityPolicy | Set-SecurityPolicy -ForgedTransmits
$false
Get-VirtualPortGroup | Get-SecurityPolicy | Set-SecurityPolicy
-ForgedTransmitsInherited $true"
end

