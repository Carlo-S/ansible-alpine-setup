#!/bin/ash
ansible-playbook -i hosts site.yml --extra-vars "@config.yml"
