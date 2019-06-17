control "V-94011" do
  title "The ESXi host must prohibit the reuse of passwords within five
iterations."
  desc  "If a user, or root, used the same password continuously or was allowed
to change it back shortly after being forced to change it to something else, it
would provide a potential intruder with the opportunity to keep guessing at one
user's password until it was guessed correctly."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000077-VMM-000440"
  tag "gid": "V-94011"
  tag "rid": "SV-104097r1_rule"
  tag "stig_id": "ESXI-65-000032"
  tag "fix_id": "F-100259r1_fix"
  tag "cci": ["CCI-000200"]
  tag "nist": ["IA-5 (1) (e)", "Rev_4"]
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

If the remember setting is not set or is not \"remember=5\", this is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in “/etc/pam.d/passwd”:

password sufficient /lib/security/$ISA/pam_unix.so use_authtok nullok shadow
sha512 remember=5"
end

