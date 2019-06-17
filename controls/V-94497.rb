control "V-94497" do
  title "The ESXi host SSH daemon must be configured to only use FIPS 140-2
approved ciphers."
  desc  "Approved algorithms should impart some level of confidence in their
implementation. These are also required for compliance.

    Note: That this does not imply FIPS 140-2 certification.
  "
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000478-VMM-001980"
  tag "gid": "V-94497"
  tag "rid": "SV-104327r1_rule"
  tag "stig_id": "ESXI-65-100010"
  tag "fix_id": "F-100613r1_fix"
  tag "cci": ["CCI-002450"]
  tag "nist": ["SC-13", "Rev_4"]
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
FIPS-approved ciphers are in use, run the following command:

# grep -i \"^Ciphers\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"Ciphers
aes128-ctr,aes192-ctr,aes256-ctr\", this is a finding."
  tag "fix": "Limit the ciphers to those algorithms which are FIPS-approved.
Counter (CTR) mode is also preferred over cipher-block chaining (CBC) mode.

Add or correct the following line in \"/etc/ssh/sshd_config\":

Ciphers aes128-ctr,aes192-ctr,aes256-ctr"
end

