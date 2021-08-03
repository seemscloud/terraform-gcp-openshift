# Openshift

---
## OS Type
 - Centos 7
 - RedHat 7/8

---
## Prepare SSH

### Add SSH Key

```bash
eval `ssh-agent`
ssh-add
```

### Connect to Bastion
```bash
ssh -A terraform@bastion.localdomain
```

---
## On Bastion

### Install Packages
```bash
yum install -y python3 python3-pip python3-six ansible git bind-utils
```

### Clone Repository
```bash
git clone https://github.com/openshift/openshift-ansible.git

cd openshift-ansible && git checkout release-3.11 && cd ..
cp openshift-ansible/inventory/hosts.example .
```

### Run Ansible

