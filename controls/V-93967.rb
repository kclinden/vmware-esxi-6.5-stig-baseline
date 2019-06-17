control "V-93967" do
  title "The ESXi host SSH daemon must use DoD-approved encryption to protect
the confidentiality of remote access sessions."
  desc  "Approved algorithms should impart some level of confidence in their
implementation. Limit the ciphers to those algorithms which are FIPS-approved.
Counter (CTR) mode is also preferred over cipher-block chaining (CBC) mode.

    Note: This does not imply FIPS 140-2 validation.
  "
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000033-VMM-000140"
  tag "gid": "V-93967"
  tag "rid": "SV-104053r1_rule"
  tag "stig_id": "ESXI-65-000010"
  tag "fix_id": "F-100215r1_fix"
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
  tag "check": "Only FIPS-approved ciphers should be used. To verify that only
FIPS-approved ciphers are in use, run the following command from an SSH session
connected to the ESXi host, or from the ESXi shell:

# grep -i \"^Ciphers\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"Ciphers
aes128-ctr,aes192-ctr,aes256-ctr\", this is a finding."
  tag "fix": "Limit the ciphers to those algorithms which are FIPS-approved.
Counter (CTR) mode is also preferred over cipher-block chaining (CBC) mode.

From an SSH session connected to the ESXi host, or from the ESXi shell, add or
correct the following line in \"/etc/ssh/sshd_config\":

Ciphers aes128-ctr,aes192-ctr,aes256-ctr"
end

