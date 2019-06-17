control "V-94551" do
  title "The ESXi host must off-load audit records onto a different system or
media than the system being audited by configuring remote logging."
  desc  "Remote logging to a central log host provides a secure, centralized
store for ESXi logs. By gathering host log files onto a central host it can
more easily monitor all hosts with a single tool. It can also do aggregate
analysis and searching to look for such things as coordinated attacks on
multiple hosts. Logging to a secure, centralized log server also helps prevent
log tampering and also provides a long-term audit record."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000342-VMM-001230"
  tag "gid": "V-94551"
  tag "rid": "SV-104381r1_rule"
  tag "stig_id": "ESXI-65-400004"
  tag "fix_id": "F-100667r1_fix"
  tag "cci": ["CCI-001851"]
  tag "nist": ["AU-4 (1)", "Rev_4"]
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
Configuration >> Advanced Settings.  Select the \"Syslog.global.logHost\" value
and verify it is set to a site specific syslog server hostname.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logHost

If the \"Syslog.global.logHost\" value is not set to a site specific syslog
server, this is a finding."
  tag "fix": "From the vSphere Client select the ESXi host and go to
Configuration >> Advanced Settings.  Select the \"Syslog.global.logHost\" value
and configure it to a site specific syslog server.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logHost |
Set-AdvancedSetting -Value \"<insert syslog server hostname>\""
end

