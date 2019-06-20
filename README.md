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

## License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
