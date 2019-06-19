control "V-94059" do
  title "The ESXi host must configure the firewall to restrict access to
services running on the host."
  desc  "Unrestricted access to services running on an ESXi host can expose a
host to outside attacks and unauthorized access. Reduce the risk by configuring
the ESXi firewall to only allow access from authorized networks."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94059"
  tag "rid": "SV-104145r1_rule"
  tag "stig_id": "ESXI-65-000056"
  tag "fix_id": "F-100307r1_fix"
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
  tag "check": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Security Profile. Under the Firewall section click Edit
and for each enabled service click Firewall and review the allowed IPs. Check
this for Incoming and Outgoing connections.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-VMHostFirewallException | Where {$_.Enabled -eq $true} |
Select
Name,Enabled,@{N=\"AllIPEnabled\";E={$_.ExtensionData.AllowedHosts.AllIP}}

If for an enabled service \"Allow connections from any IP address\" is
selected, this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Security Profile. Under the Firewall section click Edit
and for each enabled service uncheck the check box to “Allow connections from
any IP address,” and input the site specific network(s) required.Configure this
for Incoming and Outgoing connections.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

$esxcli = Get-EsxCli
#This disables the allow all rule for the target service
$esxcli.network.firewall.ruleset.set($false,$true,\"sshServer\")
$esxcli.network.firewall.ruleset.allowedip.add(\"192.168.0.0/24\",\"sshServer\")

This must be done for each enabled service."


#(Get-VMHost | Get-VMHostFirewallException | Where {$_.Enabled -eq $true}).ExtensionData.AllowedHosts.AllIP
command = '(Get-VMHost | Get-VMHostFirewallException | Where {$_.Enabled -eq $true}).ExtensionData.AllowedHosts.AllIP'
describe powercli_command(command) do
  its('stdout.strip') { should_not match "True" }
end

end
