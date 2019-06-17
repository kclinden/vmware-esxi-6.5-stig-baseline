control "V-93983" do
  title "The ESXi host SSH daemon must not permit GSSAPI authentication."
  desc  "GSSAPI authentication is used to provide additional authentication
mechanisms to applications. Allowing GSSAPI authentication through SSH exposes
the system’s GSSAPI to remote hosts, increasing the attack surface of the
system."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93983"
  tag "rid": "SV-104069r1_rule"
  tag "stig_id": "ESXI-65-000018"
  tag "fix_id": "F-100231r1_fix"
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
  tag "check": "From an SSH session connected to the ESXi host, or from the
ESXi shell, run the following command:

# grep -i \"^GSSAPIAuthentication\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"GSSAPIAuthentication no\",
this is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

GSSAPIAuthentication no"
end

