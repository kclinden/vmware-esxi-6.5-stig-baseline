control "V-93987" do
  title "The ESXi host SSH daemon must perform strict mode checking of home
directory configuration files."
  desc  "If other users have access to modify user-specific SSH configuration
files, they may be able to log into the system as another user."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93987"
  tag "rid": "SV-104073r1_rule"
  tag "stig_id": "ESXI-65-000020"
  tag "fix_id": "F-100235r1_fix"
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

# grep -i \"^StrictModes\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"StrictModes yes\", this is
a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

StrictModes yes"
end

