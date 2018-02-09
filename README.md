# Ansible-Tower v3.2.x Installation

Tested on Vmware Workstation v12 or KVM either on an OS Centos7 or Redhat7.4 developer version (you should register your developer version) and either on a VM or physical computer. We run Ansible-Tower with 2 vcpu, 5GB ram and 60GB disk, this is the minimum resources, more is better and faster.

***if this break, let us know***<br>
***if you have redhat 7.x licensed, better***

This will only take about 10-15 min if you are using SSD including vm provisioning.  You may provision your centos7/redhat7 as no-gui server and make sure you can access the ip from the host browser whether it's a NAT or BRIDGE network.

Do these after the vm had been provisioned and it should be executed to itself, login/su/sudo to root.

```
curl https://raw.githubusercontent.com/tso-ansible/ansible-tower/master/script.sh | /bin/bash
```

```
Bug catcher

This is working on this repo, http://mirror.centos.org/centos/7 or this http://mirror.centos.org/centos/7.4.1708, 
but if it continue not to work because the package dependencies won't install, the ansible-tower installation will fail too.
The other link that this script/playbook is using might also change, so verify if it breaks and find a new link.
```

# Created by Venerari and Lazaroall
