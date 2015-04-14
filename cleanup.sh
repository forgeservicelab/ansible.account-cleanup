#!/bin/bash

#Note! All arguments are passed to ansible-playbook at the end of the script.

if grep -qE 'username\:[[:space:]]*$|api_key\:[[:space:]]*$|project_id\:[[:space:]]*$' nova.yml
then
    echo "Configuration incomplete in nova.yml"
    exit
fi

if grep -E '\[\]|\[[[:space:]]*\]' group_vars/all
then
    echo "No accounts configured for removal in group_vars/all"
    exit
fi

ANSIBLE_NOVA_CONFIG=nova.yml ansible-playbook -e ansible_ssh_user=`whoami` -i inventory cleanup.yml "$@"
