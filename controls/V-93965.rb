control "V-93965" do
  title "The ESXi host SSH daemon must be configured with the Department of
Defense (DoD) login banner."
  desc  "The warning message reinforces policy awareness during the logon
process and facilitates possible legal action against attackers. Alternatively,
systems whose ownership should not be obvious should ensure usage of a banner
that does not provide easy attribution."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000023-VMM-000060"
  tag "gid": "V-93965"
  tag "rid": "SV-104051r1_rule"
  tag "stig_id": "ESXI-65-000009"
  tag "fix_id": "F-100213r1_fix"
  tag "cci": ["CCI-000048"]
  tag "nist": ["AC-8 a", "Rev_4"]
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

# grep -i \"^Banner\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"Banner /etc/issue\", this
is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

Banner /etc/issue"
end

