control "V-94017" do
  title "The ESXi host must be configured to disable non-essential capabilities
by disabling SSH."
  desc  "The ESXi Shell is an interactive command line interface (CLI)
available at the ESXi server console. The ESXi shell provides temporary access
to commands essential for server maintenance. Intended primarily for use in
break-fix scenarios, the ESXi shell is well suited for checking and modifying
configuration details, not always generally accessible, using the vSphere
Client. The ESXi shell is accessible remotely using SSH by users with the
Administrator role. Under normal operating conditions, SSH access to the host
must be disabled as is the default.  As with the ESXi shell, SSH is also
intended only for temporary use during break-fix scenarios. SSH must therefore
be disabled under normal operating conditions and must only be enabled for
diagnostics or troubleshooting. Remote access to the host must therefore be
limited to the vSphere Client at all other times."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000095-VMM-000480"
  tag "gid": "V-94017"
  tag "rid": "SV-104103r1_rule"
  tag "stig_id": "ESXI-65-000035"
  tag "fix_id": "F-100265r1_fix"
  tag "cci": ["CCI-000381"]
  tag "nist": ["CM-7 a", "Rev_4"]
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
Configure >> System >> Security Profile. Under Services select Edit and view
the \"SSH\" service and verify it is stopped.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-VMHostService | Where {$_.Label -eq \"SSH\"}

If the ESXi SSH service is running, this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Security Profile. Under Services select Edit then select
the SSH service and click the Stop button to stop the service. Use the
pull-down menu to change the Startup policy to \"Start and stop manually\" and
click OK.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-VMHostService | Where {$_.Label -eq \"SSH\"} |
Set-VMHostService -Policy Off
Get-VMHost | Get-VMHostService | Where {$_.Label -eq \"SSH\"} |
Stop-VMHostService"

#command = 'Get-VMHost | Get-VMHostService | Where {$_.Label -like "SSH"} | Select Policy, Running | Format-List'
#describe powercli_command(command) do
#  its('stdout.strip') { should match "True" }
#  its('stdout.strip') { should_not match "on" }
#end

end
