control "V-93979" do
  title "The ESXi host SSH daemon must not permit user environment settings."
  desc  "SSH environment options potentially allow users to bypass access
restriction in some configurations. Users must not be able to present
environment options to the SSH daemon."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93979"
  tag "rid": "SV-104065r1_rule"
  tag "stig_id": "ESXI-65-000016"
  tag "fix_id": "F-100227r1_fix"
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

# grep -i \"^PermitUserEnvironment\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"PermitUserEnvironment
no\", this is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

PermitUserEnvironment no"
end

