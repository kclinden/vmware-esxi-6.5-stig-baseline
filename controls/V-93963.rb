control "V-93963" do
  title "The ESXi host must display the Standard Mandatory DoD Notice and
Consent Banner before granting access to the system."
  desc  "Failure to display the DoD logon banner prior to a log in attempt will
negate legal proceedings resulting from unauthorized access to system
resources."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000023-VMM-000060"
  tag "gid": "V-93963"
  tag "rid": "SV-104049r1_rule"
  tag "stig_id": "ESXI-65-000008"
  tag "fix_id": "F-100211r1_fix"
  tag "cci": ["CCI-000048"]
  tag "nist": ["AC-8 a", "Rev_4"]
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
Configure >> System >> Advanced System Settings.  Select the Config.Etc.issue
value and verify it is set to DoD logon banner below.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Config.Etc.issue

If the Config.Etc.issue setting (/etc/issue file) does not contain the logon
banner exactly as shown below this is a finding.

\"You are accessing a U.S. Government (USG) Information System (IS) that is
provided for USG-authorized use only. By using this IS (which includes any
device attached to this IS), you consent to the following conditions: -The USG
routinely intercepts and monitors communications on this IS for purposes
including, but not limited to, penetration testing, COMSEC monitoring, network
operations and defense, personnel misconduct (PM), law enforcement (LE), and
counterintelligence (CI) investigations. -At any time, the USG may inspect and
seize data stored on this IS. -Communications using, or data stored on, this IS
are not private, are subject to routine monitoring, interception, and search,
and may be disclosed or used for any USG-authorized purpose. -This IS includes
security measures (e.g., authentication and access controls) to protect USG
interests--not for your personal benefit or privacy. -Notwithstanding the
above, using this IS does not constitute consent to PM, LE or CI investigative
searching or monitoring of the content of privileged communications, or work
product, related to personal representation or services by attorneys,
psychotherapists, or clergy, and their assistants. Such communications and work
product are private and confidential. See User Agreement for details.\""
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> System >> Advanced System Settings. Click Edit and select the
Config.Etc.issue value and set it to the following.

\"You are accessing a U.S. Government (USG) Information System (IS) that is
provided for USG-authorized use only. By using this IS (which includes any
device attached to this IS), you consent to the following conditions: -The USG
routinely intercepts and monitors communications on this IS for purposes
including, but not limited to, penetration testing, COMSEC monitoring, network
operations and defense, personnel misconduct (PM), law enforcement (LE), and
counterintelligence (CI) investigations. -At any time, the USG may inspect and
seize data stored on this IS. -Communications using, or data stored on, this IS
are not private, are subject to routine monitoring, interception, and search,
and may be disclosed or used for any USG-authorized purpose. -This IS includes
security measures (e.g., authentication and access controls) to protect USG
interests--not for your personal benefit or privacy. -Notwithstanding the
above, using this IS does not constitute consent to PM, LE or CI investigative
searching or monitoring of the content of privileged communications, or work
product, related to personal representation or services by attorneys,
psychotherapists, or clergy, and their assistants. Such communications and work
product are private and confidential. See User Agreement for details.\"

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name Config.Etc.issue | Set-AdvancedSetting
-Value \"<insert logon banner>\""

command = '(Get-VMHost | Get-AdvancedSetting -Name Config.Etc.issue).Value'
describe powercli_command(command) do
  its('stdout.strip') { should_not eq "" }
end

end
