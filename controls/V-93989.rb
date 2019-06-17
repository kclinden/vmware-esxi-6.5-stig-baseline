control "V-93989" do
  title "The ESXi host SSH daemon must not allow compression or must only allow
compression after successful authentication."
  desc  "If compression is allowed in an SSH connection prior to
authentication, vulnerabilities in the compression software could result in
compromise of the system from an unauthenticated connection, potentially with
root privileges."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93989"
  tag "rid": "SV-104075r1_rule"
  tag "stig_id": "ESXI-65-000021"
  tag "fix_id": "F-100237r1_fix"
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

# grep -i \"^Compression\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"Compression no\", this is
a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

Compression no"
end

