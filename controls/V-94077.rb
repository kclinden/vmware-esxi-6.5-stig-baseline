control "V-94077" do
  title "For the ESXi host all port groups must not be configured to VLAN
values reserved by upstream physical switches."
  desc  "Certain physical switches reserve certain VLAN IDs for internal
purposes and often disallow traffic configured to these values. For example,
Cisco Catalyst switches typically reserve VLANs 1001–1024 and 4094, while Nexus
switches typically reserve 3968–4047 and 4094. Check with the documentation for
your specific switch. Using a reserved VLAN might result in a denial of service
on the network."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94077"
  tag "rid": "SV-104163r1_rule"
  tag "stig_id": "ESXI-65-000065"
  tag "fix_id": "F-100325r1_fix"
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
the port group VLAN tags and verify they are not set to a reserved VLAN ID.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VirtualPortGroup | Select Name, VLanId

If any port group is configured with a reserved VLAN ID, this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> Networking >> Virtual switches. Highlight a port group (where VLAN
ID set to 4095) and click Edit settings (pencil). Change the VLAN ID to not be
a reserved VLAN ID and click OK.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VirtualPortGroup -Name \"portgroup name\" | Set-VirtualPortGroup -VLanId
\"New VLAN#\""
end

