control "V-93991" do
  title "The ESXi host SSH daemon must be configured to not allow gateway
ports."
  desc  "SSH TCP connection forwarding provides a mechanism to establish TCP
connections proxied by the SSH server. This function can provide similar
convenience to a Virtual Private Network (VPN) with the similar risk of
providing a path to circumvent firewalls and network ACLs. Gateway ports allow
remote forwarded ports to bind to non-loopback addresses on the server."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93991"
  tag "rid": "SV-104077r1_rule"
  tag "stig_id": "ESXI-65-000022"
  tag "fix_id": "F-100239r1_fix"
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

# grep -i \"^GatewayPorts\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"GatewayPorts no\", this is
a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

GatewayPorts no"
end

