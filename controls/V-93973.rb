control "V-93973" do
  title "The ESXi host SSH daemon must not allow host-based authentication."
  desc  "SSH trust relationships mean a compromise on one host can allow an
attacker to move trivially to other hosts. SSH's cryptographic host-based
authentication is more secure than \".rhosts\" authentication, since hosts are
cryptographically authenticated. However, it is not recommended that hosts
unilaterally trust one another, even within an organization."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93973"
  tag "rid": "SV-104059r1_rule"
  tag "stig_id": "ESXI-65-000013"
  tag "fix_id": "F-100221r1_fix"
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

# grep -i \"^HostbasedAuthentication\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"HostbasedAuthentication
no\", this is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

Add or correct the following line in \"/etc/ssh/sshd_config\":

HostbasedAuthentication no"
end

