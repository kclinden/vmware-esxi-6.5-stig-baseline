control "V-93977" do
  title "The ESXi host SSH daemon must not allow authentication using an empty
password."
  desc  "Configuring this setting for the SSH daemon provides additional
assurance that remote login via SSH will require a password, even in the event
of misconfiguration elsewhere."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93977"
  tag "rid": "SV-104063r1_rule"
  tag "stig_id": "ESXI-65-000015"
  tag "fix_id": "F-100225r1_fix"
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

# grep -i \"^PermitEmptyPasswords\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"PermitEmptyPasswords no\",
this is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

PermitEmptyPasswords no"
end

