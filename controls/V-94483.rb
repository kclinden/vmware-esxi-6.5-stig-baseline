control "V-94483" do
  title "The ESXi host must exclusively enable TLS 1.2 for the ioFilter, vSANVP
and reverse proxy services."
  desc  "TLS 1.0 and 1.1 are deprecated protocols with well published
shortcomings and vulnerabilities. TLS 1.2 should be enabled on all interfaces
and SSLv3, TL 1.1 and 1.0 disabled where supported. Mandating TLS 1.2 may break
third party integrations and add-ons to vSphere. Test these integrations
carefully after implementing TLS 1.2 and roll back where appropriate. On
interfaces where required functionality is broken with TLS 1.2 this finding is
N/A until such time as the third party software supports TLS 1.2.

    Make sure you modify TLS settings in the following order: 1. Platform
Services Controllers (if applicable), 2. vCenter, 3. ESXi
  "
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94483"
  tag "rid": "SV-104313r1_rule"
  tag "stig_id": "ESXI-65-000074"
  tag "fix_id": "F-100599r1_fix"
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
  tag "check": "From the vSphere Web Client, select the host and then click
Configure >> System >> Advanced System Settings. Find the
UserVars.ESXiVPsDisabledProtocols value and verify that it is set to the
following:

tlsv1,tlsv1.1,sslv3

If the value is not set as above or it does not exist, this is a finding.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiVPsDisabledProtocols

If the value returned is not \"tlsv1,tlsv1.1,sslv3\" or the setting does not
exist, this is a finding."
  tag "fix": "From the vSphere Web Client, select the host and then click
Configure >> System >> Advanced System Settings. Find the
UserVars.ESXiVPsDisabledProtocols value and set to the following:

tlsv1,tlsv1.1,sslv3

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiVPsDisabledProtocols |
Set-AdvancedSetting -Value \"tlsv1,tlsv1.1,sslv3\"

A host reboot is required for changes to take effect."

command = '(Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiVPsDisabledProtocols).Value'
describe powercli_command(command) do
  its('stdout.strip') { should match "tlsv1,tlsv1.1,sslv3" }
end


end
