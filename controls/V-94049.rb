control "V-94049" do
  title "The ESXi host must protect the confidentiality and integrity of
transmitted information."
  desc  "From the vSphere Web Client select the ESXi Host and go to Configure
>> Networking >> VMkernel adapters. Review each VMkernel adapter that is
defined and ensure it is enabled for only one type of management traffic."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000423-VMM-001700"
  tag "gid": "V-94049"
  tag "rid": "SV-104135r1_rule"
  tag "stig_id": "ESXI-65-000049"
  tag "fix_id": "F-100297r1_fix"
  tag "cci": ["CCI-002418"]
  tag "nist": ["SC-8", "Rev_4"]
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
Manage > Networking > VMkernel adapters.  Review each VMkernel adapter that is
defined and ensure it is enabled for only one type of management traffic.

If any VMkernel is used for more than one type of management traffic, this is a
finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> Networking >> VMkernel adapters >> Select a VMkernel Adapter >>
Click Edit settings >> Uncheck any additional services that have been enabled
on the VMkernel adapter so that there is only one service left checked."
end

