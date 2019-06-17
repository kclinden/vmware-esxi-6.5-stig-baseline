control "V-93969" do
  title "The ESXi host SSH daemon must be configured to use only the SSHv2
protocol."
  desc  "SSH protocol version 1 suffers from design flaws that result in
security vulnerabilities and should not be used. Only SSH protocol version 2
connections should be permitted."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000033-VMM-000140"
  tag "gid": "V-93969"
  tag "rid": "SV-104055r1_rule"
  tag "stig_id": "ESXI-65-000011"
  tag "fix_id": "F-100217r1_fix"
  tag "cci": ["CCI-000068"]
  tag "nist": ["AC-17 (2)", "Rev_4"]
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

# grep -i \"^Protocol\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"Protocol 2\", this is a
finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

Add or correct the following line in \"/etc/ssh/sshd_config\":

Protocol 2"
end

