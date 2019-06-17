control "V-94083" do
  title "All ESXi host-connected virtual switch VLANs must be fully documented
and have only the required VLANs."
  desc  "When defining a physical switch port for trunk mode, only specified
VLANs must be configured on the VLAN trunk link. The risk with not fully
documenting all VLANs on the vSwitch is that it is possible that a physical
trunk port might be configured without needed VLANs, or with unneeded VLANs,
potentially enabling an administrator to either accidentally or maliciously
connect a VM to an unauthorized VLAN."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94083"
  tag "rid": "SV-104169r1_rule"
  tag "stig_id": "ESXI-65-000068"
  tag "fix_id": "F-100331r1_fix"
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
  tag "check": "Note that this check refers to an entity outside the physical
scope of the ESXi server system. The configuration of upstream physical
switches must be documented to ensure that unneeded VLANs are configured for
all physical ports connected to ESXi hosts. Inspect the documentation and
verify that the documentation is updated on an organization defined frequency
and/or whenever modifications are made to either ESXi hosts or the upstream
physical switches. Alternatively, log in to the physical switch and verify that
only needed VLANs are configured for all physical ports connected to ESXi hosts.

If the physical switch's configuration is trunked VLANs that are not used by
ESXi for all physical ports connected to ESXi hosts, this is a finding."
  tag "fix": "Note that this check refers to an entity outside the scope of the
ESXi server system.

Remove any VLANs trunked across physical ports connected to ESXi hosts that are
not in use."
end

