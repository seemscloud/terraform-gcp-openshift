# Region / Zone
aaa_region_aaa = "us-central1"
aaa_zone_aaa = "us-central1-a"

# Metadata (SSH)
aaa_metadata_aaa-name = "terraform"
aaa_metadata_aaa-pub_key = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDiqdSV9/dcsMlN90d8wajnfkbHnLqhnL3YvN5l/+zFI++2aWAw9h/IociSUl+dxA/Gxyq5eurdilktuIi0oceX80hNAgyfijxb6Pd3ZHgzmzra4AiTbiDgYH8/XMAVxtl62almAjCT3h4KRL4pdnv8nZGPyZzs2FCj0/NPPdvScc1vWh5b68ubsLkxIFD3TOPzvhulo4e37GWHKAGn9DKztXFQ9cMkA+8guSB2AKtYiRVnug2CZFyHw86Ufb7euRjZiKR8apfijkGnRdPtM7d8jv8X8WaD9VSb2VGHnT0GIuGGj9H6ik6hUa82NkO8TOYDkz1rQa/otjZrLslTQo7OoPr+FQuylTaJic+bBnvTwSeUSYvz22IwaZPetfqmV6ofg4868fb3x3xuAR7AokIRh75/1K/MnuD6Ljiu9mQ2kR7oEEzxr48/zV96ZYNiggbvxslISanLEZykL4RfabbEdNTnijkeFSW21j49PHN1YJkyxGoKncdJHmUk9RxNAXM=
EndOfMessage
aaa_metadata_bbb-name = "ansible"
aaa_metadata_bbb-pub_key = <<EndOfMessage
ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDiqdSV9/dcsMlN90d8wajnfkbHnLqhnL3YvN5l/+zFI++2aWAw9h/IociSUl+dxA/Gxyq5eurdilktuIi0oceX80hNAgyfijxb6Pd3ZHgzmzra4AiTbiDgYH8/XMAVxtl62almAjCT3h4KRL4pdnv8nZGPyZzs2FCj0/NPPdvScc1vWh5b68ubsLkxIFD3TOPzvhulo4e37GWHKAGn9DKztXFQ9cMkA+8guSB2AKtYiRVnug2CZFyHw86Ufb7euRjZiKR8apfijkGnRdPtM7d8jv8X8WaD9VSb2VGHnT0GIuGGj9H6ik6hUa82NkO8TOYDkz1rQa/otjZrLslTQo7OoPr+FQuylTaJic+bBnvTwSeUSYvz22IwaZPetfqmV6ofg4868fb3x3xuAR7AokIRh75/1K/MnuD6Ljiu9mQ2kR7oEEzxr48/zV96ZYNiggbvxslISanLEZykL4RfabbEdNTnijkeFSW21j49PHN1YJkyxGoKncdJHmUk9RxNAXM=
EndOfMessage

# Networking
aaa_vpc_aaa-name = "network"

aaa_router_aaa-name = "router"
aaa_router_aaa-region = "us-central1"

aaa_router_nat_aaa-name = "router-nat"
aaa_router_nat_aaa-count = 1

aaa_dns_aaa-name = "openshift.internal"
aaa_dns_aaa-dns_name = "openshift.internal."

# Instance (Bastion)
aaa_instance_aaa-name = "bastion"
aaa_instance_aaa-image = "centos-cloud/centos-7"
aaa_instance_aaa-tags = [
  "bastion"]
aaa_instance_aaa-type = "e2-highcpu-2"
aaa_instance_aaa-cidr = "10.0.1.0/24"

# Instance (Openshift - Load Balancer)
bbb_instance_aaa-name = "openshift-lb"
bbb_instance_aaa-image = "centos-cloud/centos-7"
bbb_instance_aaa-count = 1
bbb_instance_aaa-tags = [
  "openshift",
  "openshift-lb",
  "all"]
bbb_instance_aaa-type = "e2-highcpu-2"
bbb_instance_aaa-cidr = "10.0.13.0/24"

# Instance (Openshift - Master)
bbb_instance_bbb-name = "openshift-master"
bbb_instance_bbb-image = "centos-cloud/centos-7"
bbb_instance_bbb-count = 3
bbb_instance_bbb-tags = [
  "openshift",
  "openshift-master",
  "all"]
bbb_instance_bbb-type = "e2-highcpu-2"
bbb_instance_bbb-cidr = "10.0.10.0/24"

# Instance (Openshift - Compute)
bbb_instance_ccc-name = "openshift-compute"
bbb_instance_ccc-image = "centos-cloud/centos-7"
bbb_instance_ccc-count = 2
bbb_instance_ccc-tags = [
  "openshift",
  "openshift-compute",
  "all"]
bbb_instance_ccc-type = "e2-highcpu-2"
bbb_instance_ccc-cidr = "10.0.11.0/24"

# Instance (Openshift - Infrastructure)
bbb_instance_ddd-name = "openshift-infra"
bbb_instance_ddd-image = "centos-cloud/centos-7"
bbb_instance_ddd-count = 2
bbb_instance_ddd-tags = [
  "openshift",
  "openshift-infra",
  "all"]
bbb_instance_ddd-type = "e2-highcpu-2"
bbb_instance_ddd-cidr = "10.0.12.0/24"

# Instance (Openshift - etcd)
bbb_instance_eee-name = "openshift-etcd"
bbb_instance_eee-image = "centos-cloud/centos-7"
bbb_instance_eee-count = 3
bbb_instance_eee-tags = [
  "openshift",
  "openshift-etcd",
  "all"]
bbb_instance_eee-type = "e2-highcpu-2"
bbb_instance_eee-cidr = "10.0.14.0/24"