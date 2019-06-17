control "V-94481" do
  title "The ESXi host must enable TLS 1.2 exclusively for the SFCB service."
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
  tag "gid": "V-94481"
  tag "rid": "SV-104311r1_rule"
  tag "stig_id": "ESXI-65-000073"
  tag "fix_id": "F-100597r1_fix"
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
  tag "check": "Temporarily enable SSH, connect to the ESXi host and run the
following command:

grep \"enableTLS\" /etc/sfcb/sfcb.cfg

If the output indicates that any protocol is enabled other than TLSv1_2, this
is a finding."
  tag "fix": "Temporarily enable SSH, connect to the ESXi host and run the
following command:


cp -f /etc/sfcb/sfcb.cfg /etc/sfcb/sfcb.cfg.orig

grep -v \"enableTLS\" /etc/sfcb/sfcb.cfg.orig>/etc/sfcb/sfcb.cfg

echo enableTLSv1: false>>sfcb.cfg

echo enableTLSv1_1: false>>sfcb.cfg

echo enableTLSv1_2: true>>sfcb.cfg

/etc/init.d/sfcbd-watchdog  restart"
end

