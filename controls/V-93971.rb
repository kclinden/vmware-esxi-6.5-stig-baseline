control "V-93971" do
  title "The ESXi host SSH daemon must ignore .rhosts files."
  desc  "SSH trust relationships mean a compromise on one host can allow an
attacker to move trivially to other hosts. SSH can emulate the behavior of the
obsolete rsh command in allowing users to enable insecure access to their
accounts via \".rhosts\" files."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000107-VMM-000530"
  tag "gid": "V-93971"
  tag "rid": "SV-104057r1_rule"
  tag "stig_id": "ESXI-65-000012"
  tag "fix_id": "F-100219r1_fix"
  tag "cci": ["CCI-000767"]
  tag "nist": ["IA-2 (3)", "Rev_4"]
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

# grep -i \"^IgnoreRhosts\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"IgnoreRhosts yes\", this
is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

Add or correct the following line in \"/etc/ssh/sshd_config\":

IgnoreRhosts yes"
end

