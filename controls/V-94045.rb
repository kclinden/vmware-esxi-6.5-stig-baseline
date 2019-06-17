control "V-94045" do
  title "The ESXi host must protect the confidentiality and integrity of
transmitted information by protecting ESXi management traffic."
  desc  "The vSphere management network provides access to the vSphere
management interface on each component. Services running on the management
interface provide an opportunity for an attacker to gain privileged access to
the systems. Any remote attack most likely would begin with gaining entry to
this network."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000423-VMM-001700"
  tag "gid": "V-94045"
  tag "rid": "SV-104131r1_rule"
  tag "stig_id": "ESXI-65-000049"
  tag "fix_id": "F-100293r1_fix"
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
  tag "check": "The Management VMkernel port group should in a dedicated VLAN
that can be on a common standard or distributed virtual switch as long as the
Management VLAN is not shared by any other function and it not accessible to
anything other than management related functions such as vCenter.  The check
for this will be unique per environment.

From the vSphere Web Client select the ESXi host and go to Configure >>
Networking and review the VLAN associated with the Management VMkernel and
verify they are dedicated for that purpose and are logically separated from
other functions.

If the network segment is accessible, except to networks where other
management-related entities are located such as vCenter, this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi host and go to
Configure >> Networking >> VMkernel adapters. Select the Management VMkernel
and click Edit settings >> On the Port properties tab uncheck everything but
\"Management.” On the IP Settings tab >> Enter the appropriate IP address and
subnet information and click OK. Set the appropriate VLAN ID >> Configure >>
Networking >> Virtual switches. Select the Management portgroup and click Edit
settings >> On the properties tab, enter the appropriate VLAN ID and click OK."
end

