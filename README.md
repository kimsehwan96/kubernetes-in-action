# K8S with local virtual machine in ubuntu

## Install K8s

1. Send my local machine(mac)'s public key to k8s installing machine.

`ssh-copy-id -i ~/.ssh/id_rsa kim@192.168.1.89`

2. run ansible scripts

```bash
ansible-playbook -i ansible/inventory/vm.yaml   ansible/playbook/prepare.yaml
ansible-playbook -i ansible/inventory/vm.yaml   ansible/playbook/install-crio.yaml
ansible-playbook -i ansible/inventory/vm.yaml   ansible/playbook/instalcrio.yaml
ansible-playbook -i ansible/inventory/vm.yaml   ansible/playbook/crio-reset.yaml
ansible-playbook -i ansible/inventory/vm.yaml   ansible/playbook/master.yaml
```

3. Install CNI(cilium)

```bash
cd cilium

kubectl kustomize --enable-helm . | kubectl apply -f -
```

4. Install anything what I want

Todos:
    1. monitoring tools
        - prometheus
        - grafana
        - node-exporter
        - elasticsearch
            - filebeat
            - metricbeat
            - heartbeat
    2. Ingress, Service mesh
        - Istio
    3. Authentication and secrets
        - keycloak
        - vault
    4. ETC..
