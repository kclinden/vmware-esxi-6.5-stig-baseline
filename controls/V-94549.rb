control "V-94549" do
  title "The ESXi host must only allow the use of DoD PKI-established
certificate authorities for verification of the establishment of protected
sessions."
  desc  "To assure accountability and prevent unauthenticated access,
privileged users must utilize multifactor authentication to prevent potential
misuse and compromise of the system."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000403-VMM-001640"
  tag "gid": "V-94549"
  tag "rid": "SV-104379r1_rule"
  tag "stig_id": "ESXI-65-300040"
  tag "fix_id": "F-100665r1_fix"
  tag "cci": ["CCI-002470"]
  tag "nist": ["SC-23 (5)", "Rev_4"]
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
  tag "check": "For systems that have no local user accounts, other than root
and/or vpxuser, this is not applicable.

For environments that do not use vCenter server to manage ESXi, this is not
applicable.

From the vSphere Web Client select the ESXi host and go to Manage >>
Authentication Services and view the Smart Card Authentication status.

If \"Enable Smart Card Authentication\" is checked, the system requires smart
cards to authentication to an Active Directory Domain.

For systems that do not use smart cards with Active Directory and do have local
user accounts, other than \"root\" and/or \"vpxuser\", this is a finding."
  tag "fix": "The following are pre-requisites to configuration smart card
authentication for the ESXi DCUI:
-Active Directory domain that supports smart card authentication, smart card
readers, and smart cards.
-ESXi joined to an Active Directory domain.
-Trusted certificates for root and intermediary certificate authorities.

From the vSphere Web Client select the ESXi host and go to Manage >>
Authentication Services and edit the Smart Card Authentication configuration to
add trusted certificate authority certificates and select \"Enable Smart Card
Authentication\" and click \"OK\".

For more information see the vSphere 6.5 documentation on VMware's website."
end

