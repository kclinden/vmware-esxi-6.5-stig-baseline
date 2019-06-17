control "V-94349" do
  title "The ESXi host must not provide root/administrator level access to
CIM-based hardware monitoring tools or other third-party applications."
  desc  "The CIM system provides an interface that enables hardware-level
management from remote applications via a set of standard APIs. Create a
limited-privilege, read-only service account for CIM. Grant this role to the
user on the ESXi server.  Place this user in the Exception Users list.
When/where write access is required, create/enable a limited-privilege, service
account and grant only the minimum required privileges."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94349"
  tag "rid": "SV-104303r1_rule"
  tag "stig_id": "ESXI-65-000070"
  tag "fix_id": "F-100465r1_fix"
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
  tag "check": "From the vSphere Web Client, select the ESXi host, and go to
\"Permissions\". Select the CIM account user, then click Edit settings to
verify read-only access.

If write access is not required and the access level is not \"read-only\", this
is a finding."
  tag "fix": "From the vSphere Web Client, select the ESXi host, go to
“Permissions”. Click the green plus sign and click Add to add a
limited-privileged, read-only service account for CIM. Place the CIM account
into the \"root\" group. Select Users and right-click in the user screen.
Select \"Add\", then Add a new user. If write access is required only grant the
minimum required privileges. CIM accounts should be limited to the \"Host >>
Config >> System Management\" and \"Host >> CIM >> CIMInteraction\" privileges."
end

