#!/bin/bash

ansible-playbook -i inventory/vm.yaml playbook/prepare.yaml
ansible-playbook -i inventory/vm.yaml playbook/install-crio.yaml
ansible-playbook -i inventory/vm.yaml playbook/install.yaml
ansible-playbook -i inventory/vm.yaml playbook/crio-reset.yaml
ansible-playbook -i inventory/vm.yaml playbook/master.yaml