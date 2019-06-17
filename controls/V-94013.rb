control "V-94013" do
  title "The password hashes stored on the ESXi host must have been generated
using a FIPS 140-2 approved cryptographic hashing algorithm."
  desc  "Systems must employ cryptographic hashes for passwords using the SHA-2
family of algorithms or FIPS 140-2 approved successors. The use of unapproved
algorithms may result in weak password hashes more vulnerable to compromise."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94013"
  tag "rid": "SV-104099r1_rule"
  tag "stig_id": "ESXI-65-000033"
  tag "fix_id": "F-100261r1_fix"
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

# grep -i \"^password\" /etc/pam.d/passwd | grep sufficient

If sha512 is not listed, this is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in “/etc/pam.d/passwd”:

password sufficient /lib/security/$ISA/pam_unix.so use_authtok nullok shadow
sha512 remember=5"
end

