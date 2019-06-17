control "V-94521" do
  title "The ESXi host must employ a deny-all, permit-by-exception policy to
allow the execution of authorized software programs and guest VMs by verifying
Image Profile and VIP Acceptance Levels."
  desc  "Verify the ESXi Image Profile to only allow signed VIBs.  An unsigned
VIB represents untested code installed on an ESXi host.  The ESXi Image profile
supports four acceptance levels:

    (1) VMwareCertified - VIBs created, tested and signed by VMware
    (2) VMwareAccepted - VIBs created by a VMware partner but tested and signed
by VMware,
    (3) PartnerSupported - VIBs created, tested and signed by a certified
VMware partner
    (4) CommunitySupported - VIBs that have not been tested by VMware or a
VMware partner.

    Community Supported VIBs are not supported and do not have a digital
signature.  To protect the security and integrity of your ESXi hosts do not
allow unsigned (CommunitySupported) VIBs to be installed on your hosts.
  "
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000370-VMM-001460"
  tag "gid": "V-94521"
  tag "rid": "SV-104351r1_rule"
  tag "stig_id": "ESXI-65-100047"
  tag "fix_id": "F-100637r1_fix"
  tag "cci": ["CCI-001774"]
  tag "nist": ["CM-7 (5) (b)", "Rev_4"]
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
Configuration >> Security Profile.  Under \"Host Image Profile Acceptance
Level\" view the acceptance level.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

$esxcli = Get-EsxCli
$esxcli.software.acceptance.get()

If the acceptance level is \"CommunitySupported\", this is a finding."
  tag "fix": "From the vSphere Client select the ESXi host and go to
Configuration >> Security Profile.  Under \"Host Image Profile Acceptance
Level\" edit the acceptance level to be either \"VMwareCertified\",
\"VMwareAccepted\", or \"PartnerSupported\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

$esxcli = Get-EsxCli
$esxcli.software.acceptance.Set(\"PartnerSupported\")

Note: \"VMwareCertified\" or \"VMwareAccepted\" may be substituted for
\"PartnerSupported\", depending upon local requirements."
end

