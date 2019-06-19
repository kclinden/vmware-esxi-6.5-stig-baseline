control "V-94075" do
  title "For the ESXi host all port groups must not be configured to VLAN 4095
unless Virtual Guest Tagging (VGT) is required."
  desc  "When a port group is set to VLAN 4095, this activates VGT mode. In
this mode, the vSwitch passes all network frames to the guest VM without
modifying the VLAN tags, leaving it up to the guest to deal with them. VLAN
4095 should be used only if the guest has been specifically configured to
manage VLAN tags itself. If VGT is enabled inappropriately, it might cause
denial-of-service or allow a guest VM to interact with traffic on an
unauthorized VLAN."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94075"
  tag "rid": "SV-104161r1_rule"
  tag "stig_id": "ESXI-65-000064"
  tag "fix_id": "F-100323r1_fix"
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
Configure >> Networking >> Virtual switches. For each virtual switch, review
the port group VLAN tags and verify they are not set to 4095.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VirtualPortGroup | Select Name, VLanID

If any port group is configured with VLAN 4095 and is not documented as a
needed exception, this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> Networking >> Virtual switches. Highlight a port group (where VLAN
ID set to 4095) and click Edit settings. Change the VLAN ID to not be 4095 and
click OK.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VirtualPortGroup -Name \"portgroup name\" | Set-VirtualPortGroup -VLanId
\"New VLAN#\""

command = 'Get-VirtualPortGroup | Select VLanId -ExpandProperty VLanId'
describe powercli_command(command) do
  its('stdout.strip') { should_not match "4095" }
end


end
