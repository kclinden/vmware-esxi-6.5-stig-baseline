control "V-94001" do
  title "The ESXi hostSSH daemon must set a timeout interval on idle sessions."
  desc  "Causing idle users to be automatically logged out guards against
compromises one system leading trivially to compromises on another."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94001"
  tag "rid": "SV-104087r1_rule"
  tag "stig_id": "ESXI-65-000027"
  tag "fix_id": "F-100249r1_fix"
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

# grep -i \"^ClientAliveInterval\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"ClientAliveInterval 200\",
this is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

ClientAliveInterval 200"
end

