control "V-94479" do
  title "The ESXi host must have all security patches and updates installed."
  desc  "Installing software updates is a fundamental mitigation against the
exploitation of publicly-known vulnerabilities."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-94479"
  tag "rid": "SV-104309r1_rule"
  tag "stig_id": "ESXI-65-000072"
  tag "fix_id": "F-100595r1_fix"
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
  tag "check": "If vCenter Update Manager is used on the network it can be used
to scan all hosts for missing patches.  From the vSphere Client go to Hosts and
Clusters > Update Manager tab and select scan to view all hosts compliance
status.

If vCenter Update Manager is not used a hosts compliance status must be
manually determined by the build number.  The following VMware KB 1014508 can
be used to correlate patches with build numbers.

If the ESXi host does not have the latest patches, this is a finding.

If the ESXi host is not on a supported release, this is a finding.

VMware also publishes Advisories on security patches, and offers a way to
subscribe to email alerts for them.
https://www.vmware.com/support/policies/security_response"
  tag "fix": "If vCenter Update Manager is used on the network, hosts can be
remediated from the vSphere Web Client. From the vSphere Web Client go to Hosts
and Clusters >> Update Manager tab and select a non-compliant host and click
the Remediate button.

To manually remediate a host the patch file must be copied locally and the
following command run from an SSH session connected to the ESXi host, or from
the ESXi shell:

esxcli software vib update -d <path to offline patch bundle.zip>"
end

