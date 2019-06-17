control "V-94081" do
  title "All ESXi host-connected physical switch ports must be configured with
spanning tree disabled."
  desc  "Since VMware virtual switches do not support STP, the ESXi
host-connected physical switch ports must have portfast configured if spanning
tree is enabled to avoid loops within the physical switch network. If these are
not set, potential performance and connectivity issues might arise."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94081"
  tag "rid": "SV-104167r1_rule"
  tag "stig_id": "ESXI-65-000067"
  tag "fix_id": "F-100329r1_fix"
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
switches must be documented to ensure that spanning tree protocol is disabled
and/or portfast is configured for all physical ports connected to ESXi hosts.
Inspect the documentation and verify that the documentation is updated on an
organization defined frequency and/or whenever modifications are made to either
ESXi hosts or the upstream physical switches. Alternatively, log in to the
physical switch and verify that spanning tree protocol is disabled and/or
portfast is configured for all physical ports connected to ESXi hosts.

If the physical switch's spanning tree protocol is not disabled or portfast is
not configured for all physical ports connected to ESXi hosts, this is a
finding."
  tag "fix": "Note that this check refers to an entity outside the scope of the
ESXi server system. Document the upstream physical switch configuration for
spanning tree protocol disablement and/or portfast configuration for all
physical ports connected to ESXi hosts. Log in to the physical switch(es) and
disable spanning tree protocol and/or configure portfast for all physical ports
connected to ESXi hosts. Update the documentation on an organization defined
frequency or whenever modifications are made to either ESXi hosts or the
upstream physical switches."
end

