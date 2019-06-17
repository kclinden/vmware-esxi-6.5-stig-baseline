control "V-94051" do
  title "The ESXi host must protect the confidentiality and integrity of
transmitted information by utilizing different TCP/IP stacks where possible."
  desc  "There are three different TCP/IP stacks by default available on ESXi
now which are Default, Provisioning, and vMotion.  To better protect and
isolate sensitive network traffic within ESXi admins must configure each of
these stacks.  Additional custom TCP/IP stacks can be created if desired."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000423-VMM-001700"
  tag "gid": "V-94051"
  tag "rid": "SV-104137r1_rule"
  tag "stig_id": "ESXI-65-000052"
  tag "fix_id": "F-100299r1_fix"
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
Configure >> Networking >> TCP/IP configuration. Review the default system
TCP/IP stacks and verify they are configured with the appropriate IP address
information.

If vMotion and Provisioning VMKernels are in use and are not utilizing their
own TCP/IP stack, this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and go to
Configure >> Networking >> TCP/IP configuration >> Select a TCP/IP stack >>
Click Edit >> Enter the appropriate site specific IP address information for
the particular TCP/IP stack and click OK."
end

