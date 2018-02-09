#!/bin/bash

curl -o  /etc/yum.repos.d/centos.repo https://raw.githubusercontent.com/tso-ansible/ansible-tower/master/centos.repo

yum clean all

yum install epel-release -y

yum update -y

yum install git ansible wget -y

if [ ! -f ~/.ssh/id_rsa ]; then
	ssh-keygen -q -f ~/.ssh/id_rsa -N ""
	cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
	ssh -o StrictHostKeyChecking=no localhost "pwd" < /dev/null
fi

cd /tmp

git clone https://github.com/tso-ansible/ansible-tower.git

cd /tmp/ansible-tower

ansible-playbook -i inventory ansible-tower.yml

/tmp/lastcommand.sh
