control "V-93995" do
  title "The ESXi host SSH daemon must not accept environment variables from
the client."
  desc  "Environment variables can be used to change the behavior of remote
sessions and should be limited. Locale environment variables that specify the
language, character set, and other features modifying the operation of software
to match the user's preferences."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93995"
  tag "rid": "SV-104081r1_rule"
  tag "stig_id": "ESXI-65-000024"
  tag "fix_id": "F-100243r1_fix"
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

# grep -i \"^AcceptEnv\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"AcceptEnv\", this is a
finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

AcceptEnv"
end

