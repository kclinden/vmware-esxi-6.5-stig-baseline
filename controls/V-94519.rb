control "V-94519" do
  title "The ESXi host must synchronize internal information system clocks to
the authoritative time source when the time difference is greater than one
second."
  desc  "To assure the accuracy of the system clock, it must be synchronized
with an authoritative time source within DoD. Many system functions, including
time-based login and activity restrictions, automated reports, system logs, and
audit records depend on an accurate system clock. If there is no confidence in
the correctness of the system clock, time-based functions may not operate as
intended and records may be of diminished value."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000356-VMM-001340"
  tag "gid": "V-94519"
  tag "rid": "SV-104349r1_rule"
  tag "stig_id": "ESXI-65-100046"
  tag "fix_id": "F-100635r1_fix"
  tag "cci": ["CCI-002046"]
  tag "nist": ["AU-8 (1) (b)", "Rev_4"]
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
  tag "check": "From the vSphere Client select the ESXi host and go to
Configuration >> Time Configuration.  Select Properties >> Options and view the
configured NTP servers and service startup policy.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-VMHostNTPServer
Get-VMHost | Get-VMHostService | Where {$_.Label -eq \"NTP Daemon\"}

If the NTP service is not configured with authoritative DoD time sources, and
the service is not configured to start and stop with the host, this is a
finding."
  tag "fix": "From the vSphere Client select the ESXi host and go to
Configuration >> Time Configuration.  Select Properties >> Options and
configure the NTP service to start and stop with the host and with
authoritative DoD time sources.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

$NTPServers = \"ntpserver1\",\"ntpserver2\"
Get-VMHost | Add-VMHostNTPServer $NTPServers
Get-VMHost | Get-VMHostService | Where {$_.Label -eq \"NTP Daemon\"} |
Set-VMHostService -Policy On
Get-VMHost | Get-VMHostService | Where {$_.Label -eq \"NTP Daemon\"} |
Start-VMHostService"
end

