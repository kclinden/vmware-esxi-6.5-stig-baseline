control "V-94035" do
  title "The ESXi host must enable kernel core dumps."
  desc  "In the event of a system failure, the system must preserve any
information necessary to determine cause of failure and any information
necessary to return to operations with least disruption to mission processes."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000269-VMM-000950"
  tag "gid": "V-94035"
  tag "rid": "SV-104121r1_rule"
  tag "stig_id": "ESXI-65-000044"
  tag "fix_id": "F-100283r1_fix"
  tag "cci": ["CCI-001665"]
  tag "nist": ["SC-24", "Rev_4"]
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
  tag "check": "From the vSphere Web Client select the ESXi Host and right
click.  If the \"Add Diagnostic Partition\" option is greyed out then core
dumps are configured.

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

$esxcli = Get-EsxCli
$esxcli.system.coredump.partition.get()
$esxcli.system.coredump.network.get()

The first command prepares for the other two. The second command shows whether
there is an active core dump partition configured. The third command shows
whether a network core dump collector is configured and enabled, via the
\"HostVNic\", \"NetworkServerIP\", \"NetworkServerPort\", and \"Enabled\"
variables.

If there is no active core dump partition or the network core dump collector is
not configured and enabled, this is a finding."
  tag "fix": "From the vSphere Web Client select the ESXi Host and right click.
Select the \"Add Diagnostic Partition\" option configure a core dump diagnostic
partition.

or

From a PowerCLI command prompt while connected to the ESXi host run at least
one of the following sets of commands:

To configure a core dump partition:

$esxcli = Get-EsxCli
#View available partitions to configure
$esxcli.system.coredump.partition.list()
$esxcli.system.coredump.partition.set($null,\"PartitionName\",$null,$null)

To configure a core dump collector:

$esxcli = Get-EsxCli
$esxcli.system.coredump.network.set($null,\"vmkernel port to
use\",$null,\"CollectorIP\",\"CollectorPort\")
$esxcli.system.coredump.network.set($true)"

command1 = '$esxcli = Get-EsxCli -WarningAction:Ignore;$esxcli.system.coredump.partition.get().Active'
describe powercli_command(command1) do
  its('stdout.strip') { should_not eq "" }
end

#command2 = '$esxcli = Get-EsxCli -WarningAction:Ignore;$esxcli.system.coredump.network.get().Active'
#describe powercli_command(command2) do
#  its('stdout.strip') { should eq "600" }
#end

end
