control "V-94047" do
  title "The ESXi host must protect the confidentiality and integrity of
transmitted information by protecting IP based management traffic."
  desc  "Virtual machines might share virtual switches and VLANs with the
IP-based storage configurations. IP-based storage includes vSAN, iSCSI and NFS.
This configuration might expose IP-based storage traffic to unauthorized
virtual machine users. IP-based storage frequently is not encrypted. It can be
viewed by anyone with access to this network. To restrict unauthorized users
from viewing the IP-based storage traffic, the IP-based storage network must be
logically separated from the production traffic. Configuring the IP-based
storage adaptors on separate VLANs or network segments from other VMkernels and
Virtual Machines will limit unauthorized users from viewing the traffic."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000423-VMM-001700"
  tag "gid": "V-94047"
  tag "rid": "SV-104133r1_rule"
  tag "stig_id": "ESXI-65-000050"
  tag "fix_id": "F-100295r1_fix"
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
  tag "check": "IP-Based storage (iSCSI, NFS, vSAN) VMkernel port groups must
be in a dedicated VLAN that can be on a common standard or distributed virtual
switch that is logically separated from other traffic types.  The check for
this will be unique per environment.

From the vSphere Web Client select the ESXi Host and go to Configure >>
Networking >> VMkernel adapters and review the VLANs associated with any
IP-Based storage VMkernels and verify they are dedicated for that purpose and
are logically separated from other functions.

If any IP-Based storage networks are not isolated from other traffic types,
this is a finding.

If IP-based storage is not used, this is not applicable."
  tag "fix": "Configuration of an IP-Based VMkernel will be unique to each
environment but for example to modify the IP address and VLAN information to
the correct network on a standard switch for an iSCSI VMkernel do the following:

From the vSphere Web Client select the ESXi host and go to Configure >>
Networking >> VMkernel adapters. Select the Storage VMkernel (for vSAN only)
and click Edit settings >> On the Port properties tab uncheck everything but
\"vSAN.” On the IP Settings tab >> Enter the appropriate IP address and subnet
information and click OK.

Set the appropriate VLAN ID >> Configure >> Networking >> Virtual switches.
Select the Storage portgroup (iSCSI, NFS, vSAN) and click Edit settings >> On
the properties tab, enter the appropriate VLAN ID and click OK."
end

