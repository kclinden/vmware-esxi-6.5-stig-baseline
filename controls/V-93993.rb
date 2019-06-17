control "V-93993" do
  title "The ESXi host SSH daemon must be configured to not allow X11
forwarding."
  desc  "X11 forwarding over SSH allows for the secure remote execution of
X11-based applications. This feature can increase the attack surface of an SSH
connection."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93993"
  tag "rid": "SV-104079r1_rule"
  tag "stig_id": "ESXI-65-000023"
  tag "fix_id": "F-100241r1_fix"
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

# grep -i \"^X11Forwarding\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"X11Forwarding no\", this
is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

X11Forwarding no"
end

