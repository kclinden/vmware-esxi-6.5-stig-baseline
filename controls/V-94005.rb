control "V-94005" do
  title "The ESXi host must remove keys from the SSH authorized_keys file."
  desc  "ESXi hosts come with SSH which can be enabled to allow remote access
without requiring user authentication.  To enable password free access copy the
remote users public key into the \"/etc/ssh/keys-root/authorized_keys\" file on
the ESXi host.  The presence of the remote user's public key in the
\"authorized_keys\" file identifies the user as trusted, meaning the user is
granted access to the host without providing a password.  If using Lockdown
Mode and SSH is disabled then login with authorized keys will have the same
restrictions as username/password."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94005"
  tag "rid": "SV-104091r1_rule"
  tag "stig_id": "ESXI-65-000029"
  tag "fix_id": "F-100253r1_fix"
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

# ls -la /etc/ssh/keys-root/authorized_keys

or

# cat /etc/ssh/keys-root/authorized_keys

If the authorized_keys file exists and is not empty, this is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, zero or remove the /etc/ssh/keys-root/authorized_keys file:

# >/etc/ssh/keys-root/authorized_keys

or

# rm /etc/ssh/keys-root/authorized_keys"
end

