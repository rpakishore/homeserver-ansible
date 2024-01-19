#!/bin/bash

cd /home/rpakishore/docker/compose/ansible
source .env

export BECOME_PASS
ansible-playbook -i ./inventory/debian ./playbooks/debian-apt-full.yml -e "ansible_become_password=$BECOME_PASS"
