control "V-94043" do
  title "The ESXi host must protect the confidentiality and integrity of
transmitted information by isolating vMotion traffic."
  desc  "While encrypted vMotion is available now vMotion traffic should still
be sequestered from other traffic to further protect it from attack. This
network must be only be accessible to other ESXi hosts preventing outside
access to the network."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000423-VMM-001700"
  tag "gid": "V-94043"
  tag "rid": "SV-104129r1_rule"
  tag "stig_id": "ESXI-65-000048"
  tag "fix_id": "F-100291r1_fix"
  tag "cci": ["CCI-002418"]
  tag "nist": ["SC-8", "Rev_4"]
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
  tag "check": "The vMotion VMKernel port group should in a dedicated VLAN that
can be on a common standard or distributed virtual switch as long as the
vMotion VLAN is not shared by any other function and it not routed to anything
but ESXi hosts.  The check for this will be unique per environment.  From the
vSphere Client select the ESXi host and go to Configuration > Networking and
review the VLAN associated with the vMotion VMkernel(s) and verify they are
dedicated for that purpose and are logically separated from other functions.

If long distance or cross vCenter vMotion is used the vMotion network can be
routable but must be accessible to only the intended ESXi hosts.

If the vMotion port group is not on an isolated VLAN and/or is routable to
systems other than ESXi hosts, this is a finding.

For environments that do not use vCenter server to manage ESXi, this is not
applicable."
  tag "fix": "Configuration of the vMotion VMkernel will be unique to each
environment. As an example, to modify the IP address and VLAN information to
the correct network on a distributed switch do the following:

From the vSphere Web Client go to Networking >> Select a distributed switch >>
Select a port group >> Configure >> Settings >> Edit >> VLAN. Change the \"VLAN
Type\" to \"VLAN\" and change the \"VLAN ID\" to a network allocated and
dedicated to vMotion traffic exclusively."
end

