#!/bin/bash

ANSIBLE_NOVA_CONFIG=nova.yml ansible-playbook -e ansible_ssh_user=`whoami` -i inventory cleanup.yml "$@"
