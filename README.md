# Ansible-Tower Installation

Tested on Vmware Workstation v12 (check the 3 virtualization engines when creating the vm). We run Ansible-Tower with 2 vcpu, 5GB ram and 60GB disk, this is the minimum resources, more is better and faster.

Make sure your centos7 is server-gui when you select the installation for you need to run the Ansible-Tower on the browser inside the vm. It's up to you later when you want to change this to bridge with Vware Workstation network.

This will only take about 10-15 min if you are using SSD including vm provisioning.

You can't proceed if your vm or physical computer is not capable of virtualization by running "grep -E '(vmx|svm)' /proc/cpuinfo", it should output either vmx or svm.

Do these after the vm had been provisioned,

Create the centos7 repo but login as root first<br>
$ vi /etc/yum.repos.d/centos.repo<br>
<br>
[centos]<br>
name=CentOS $releasever - $basearch<br>
baseurl=http://mirror.centos.org/centos/7/os/$basearch/<br>
enabled=1<br>
gpgcheck=1<br>
gpgkey=http://mirror.centos.org/centos/7/os/$basearch/RPM-GPG-KEY-CentOS-7

Clean yum<br>
$ yum clean all

Install software<br>
$ yum install epel-release

$ yum update -y<br>
the epel-release should upgrade to 7-11 version<br>
<br>
$ yum install git ansible -y

Established ssh<br>
$ ssh-keygen<br>
***enter/enter/enter***

$ ssh-copy-id localhost<br>
***type yes and put the root password***

Clone this repository
$ git clone https://github.com/tso-ansible/minishift.git

$ cd minishift/

Run ansible-playbook
$ ansible-playbook -i inventory minishift.yml

Sorry the output is not accurate but to see the URL, run from shell "oc login" and it should show it and then you could go to your centos7 firefox and login on it.
