# OpenShift

---

## Requirements

### OS Type

- Centos 7
- RedHat 7

### Instances

- type of node `e2-highcpu-2`
- minimum `12` nodes
- usernames:
    - bastion -> `terraform`
    - nodes -> `ansible`

Type of node or number of nodes can be easily changed in `variables.tfvars`

---

## Prepare Environment

### Add SSH Key

```bash
eval `ssh-agent`
ssh-add
```

### Connect to Bastion

```bash
ssh -A terraform@bastion.localdomain
```

### Install Packages on Bastion

```bash
yum install -y python3 python3-pip python3-six ansible git bind-utils
```

### Clone Repository

```bash
git clone https://github.com/openshift/openshift-ansible.git

cd openshift-ansible && git checkout release-3.11 && cd ..
cp openshift-ansible/inventory/hosts.example .

mv hosts.example inventory.ini
```

---

## Running Ansible

### Prerequisites

```bash
ansible-playbook -i inventory.ini openshift-ansible/playbooks/prerequisites.yml
```

### Deploy Cluster

```bash
ansible-playbook -i inventory.ini openshift-ansible/playbooks/deploy_cluster.yml
```