# esxi-65-stig-v1r1

## About
**Note this Profile is a work in-progress** </br>
InSpec profile to validate the secure configuration of VMware ESXi 6.5, against DISA's VMware ESXi 6.5 Security Technical Implementation Guide (STIG) Version 1, Release 1.

## Standalone Usage

This Compliance Profile requires [InSpec](https://github.com/chef/inspec) for execution:

```
$ git clone https://github.com/kclinden/esxi-65-stig-v1r1
$ inspec exec esxi-65-stig-v1r1
```

You can also execute the profile directly from Github:

```
$ inspec exec https://github.com/kclinden/esxi-65-stig-v1r1
```

## Created By
Name: VMware_vSphere_6-5_ESXi_STIG </br>
Author: Kasey Linden </br>
Status: DRAFT </br>
Copyright: Kasey Linden </br>
Copyright Email: klinden@vmware.com </br>
Version: 1.0.0 </br>
Release: 1 </br>
Benchmark Date: 20 May 2019 </br>
Reference: http://iase.disa.mil </br>
Reference by: DISA </br>
Reference source: STIG.DOD.MIL </br>

## NOTICE

© 2018 The MITRE Corporation.

Approved for Public Release; Distribution Unlimited. Case Number 18-3678.

## NOTICE  

MITRE hereby grants express written permission to use, reproduce, distribute, modify, and otherwise leverage this software to the extent permitted by the licensed terms provided in the LICENSE.md file included with this project.

## NOTICE

This software was produced for the U. S. Government under Contract Number HHSM-500-2012-00008I, and is subject to Federal Acquisition Regulation Clause 52.227-14, Rights in Data-General.

No other use other than that granted to the U. S. Government, or to those acting on behalf of the U. S. Government under that Clause is authorized without the express written permission of The MITRE Corporation.
