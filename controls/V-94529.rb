control "V-94529" do
  title "The ESXi host must implement replay-resistant authentication
mechanisms for network access to privileged accounts by using Active Directory
for local user authentication."
  desc  "Join ESXi hosts to an Active Directory (AD) domain to eliminate the
need to create and maintain multiple local user accounts. Using AD for user
authentication simplifies the ESXi host configuration, ensures password
complexity and reuse policies are enforced and reduces the risk of security
breaches and unauthorized access.  Note: If the AD group \"ESX Admins\"
(default) exists then all users and groups that are assigned as members to this
group will have full administrative access to all ESXi hosts the domain."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000112-VMM-000560"
  tag "gid": "V-94529"
  tag "rid": "SV-104359r1_rule"
  tag "stig_id": "ESXI-65-200037"
  tag "fix_id": "F-100645r1_fix"
  tag "cci": ["CCI-001941"]
  tag "nist": ["IA-2 (8)", "Rev_4"]
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
  tag "check": "For systems that do not use Active Directory and have no local
user accounts, other than \"root\" and/or \"vpxuser\", this is not applicable.

From the vSphere Client select the ESXi host and go to Configuration >>
Authentication Services.  Verify the \"Directory Services Type\" is set to
\"Active Directory\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-VMHostAuthentication

For systems that do not use Active Directory and do have local user accounts,
other than \"root\" and/or \"vpxuser\", this is a finding.

If the \"Directory Services Type\" is not set to \"Active Directory\", this is
a finding."
  tag "fix": "From the vSphere Client select the ESXi host and go to
Configuration >> Authentication Services.  Click \"Properties\" and change the
\"Directory Service Type\" to \"Active Directory\", enter the domain to join,
check \"Use vSphere Authentication Proxy\" and enter the proxy server address
then click \"Join Domain\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-VMHostAuthentication | Set-VMHostAuthentication -JoinDomain
-Domain \"domain name\" -User \"username\" -Password \"password\""
end

