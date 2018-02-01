#!/bin/bash

curl -o  /etc/yum.repos.d/centos.repo https://raw.githubusercontent.com/tso-ansible/ansible-tower/master/centos7-repo

yum clean all

yum install epel-release -y

yum update -y

yum install git ansible wget -y

if [ ! -f ~/.ssh/id_rsa ]; then
	ssh-keygen -q -f ~/.ssh/id_rsa -N ""
	cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
	ssh -o StrictHostKeyChecking=no root@localhost "pwd" < /dev/null
fi

cd /root

git clone https://github.com/tso-ansible/ansible-tower.git

cd /root/ansible-tower

ansible-playbook -i inventory ansible-tower.yml

$lastcommand
