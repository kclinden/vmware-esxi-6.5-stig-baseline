control "V-93975" do
  title "The ESXi host SSH daemon must not permit root logins."
  desc  "Permitting direct root login reduces auditable information about who
ran privileged commands on the system and also allows direct attack attempts on
root's password."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93975"
  tag "rid": "SV-104061r1_rule"
  tag "stig_id": "ESXI-65-000014"
  tag "fix_id": "F-100223r1_fix"
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

# grep -i \"^PermitRootLogin\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"PermitRootLogin no\", this
is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

Add or correct the following line in \"/etc/ssh/sshd_config\":

PermitRootLogin no"
end

