control "V-94027" do
  title "The ESXi host must use multifactor authentication for local access to
privileged accounts."
  desc  "To assure accountability and prevent unauthenticated access,
privileged users must utilize multifactor authentication to prevent potential
misuse and compromise of the system."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000107-VMM-000530"
  tag "gid": "V-94027"
  tag "rid": "SV-104113r1_rule"
  tag "stig_id": "ESXI-65-000040"
  tag "fix_id": "F-100275r1_fix"
  tag "cci": ["CCI-000767"]
  tag "nist": ["IA-2 (3)", "Rev_4"]
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
Configure >> System >> Authentication Services and view the Smart Card
Authentication status. If \"Enable Smart Card Authentication\" is checked, the
system requires smart cards to authentication to an Active Directory Domain.

For systems that have no local user accounts, other than root and/or vpxuser,
this is not applicable.

For environments that do not use vCenter server to manage ESXi, this is not
applicable.

For systems that do not use smart cards with Active Directory and do have local
user accounts, other than root and/or vpxuser, this is a finding."
  tag "fix": "The following are pre-requisites to configuration smart card
authentication for the ESXi DCUI:
-Active Directory domain that supports smart card authentication, smart card
readers, and smart cards.
-ESXi joined to an Active Directory domain.
-Trusted certificates for root and intermediary certificate authorities.

From the vSphere Web Client select the ESXi Host and go to Configure >> System
>> Authentication Services and click Edit and check \"Enable Smart Card
Authentication\" checkbox, at the Certificates tab, click the green plus sign
to import trusted certificate authority certificates and click OK."
end

