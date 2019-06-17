control "V-94487" do
  title "The ESXi host must enable Secure Boot."
  desc  "Secure Boot is a protocol of UEFI firmware that ensures the integrity
of the boot process from hardware up through to the OS. Secure Boot for ESXi
requires support from the firmware and it requires that all ESXi kernel
modules, drivers, and VIBs be signed by VMware or a partner subordinate."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94487"
  tag "rid": "SV-104317r1_rule"
  tag "stig_id": "ESXI-65-000076"
  tag "fix_id": "F-100603r2_fix"
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

/usr/lib/vmware/secureboot/bin/secureBoot.py -s

If the output is not Enabled, this is a finding."
  tag "fix": "Temporarily enable SSH, connect to the ESXi host and run the
following command:

/usr/lib/vmware/secureboot/bin/secureBoot.py -c

If the output indicates that Secure Boot cannot be enabled, correct the
discrepancies and try again. If the discrepancies cannot be rectified this
finding is downgraded to a CAT III.

Consult your vendor documentation and boot the host into BIOS setup mode.
Enable UEFI boot mode and Secure Boot. Restart the host.

Temporarily enable SSH, connect to the ESXi host and run the following command
to verify that Secure Boot is enabled:

/usr/lib/vmware/secureboot/bin/secureBoot.py -s"
end

