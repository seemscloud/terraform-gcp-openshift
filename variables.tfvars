# Region / Zone
aaa_region_aaa = "us-central1"
aaa_zone_aaa = "us-central1-a"

# Metadata (SSH)
aaa_metadata_aaa-name = "terraform"
aaa_metadata_aaa-pub_key = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQClUEbe96eykDQPeK3Eizjz9E6/QIglt/1cpsz5UVvO4DKw8yOYg2ikUuHrgdUKX//93yNyrHPgQSoRph/zEw1TWgNwWnXPo9XjRWt+QYz1hV69Ut4ONoRCQYlRmdXSMaQojQDTwX6/t8cFzSRjLk1dzuitTDJ+M9LK1rLCxawQGMo51GdbzwmEBBAKxHA7umoTeyvYTicTGtSZa4kJlnWkMWT1zgdbfjVaKhc/nxkjpDReyEUSxWn0RV8YSnk1cSdVXzgm3ZN1iJ6kgBgefJKjkS1p/rpS8j2+gesnCbGISYjXc9PM/WEH+HP7n+42ue37NqOACsPOBLX8SW+KOzsaI7IL1JxM9kroddnDaq8dhR6HRv/e+A9+rk7DaDRnoEk/IrWDD9y7BDrzFeBFH1qYoVcrn3i6akMJ/2fWjbenQ46+tyvOZjnioih1BUtqOLN0ZUIaakKaSxS1SJpb5LAhSEg3gJozYPLdOPKim42ms7Q39beYAzcFmfLr3DrAvlk=
EndOfMessage
aaa_metadata_bbb-name = "ansible"
aaa_metadata_bbb-pub_key = <<EndOfMessage
ansible:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQClUEbe96eykDQPeK3Eizjz9E6/QIglt/1cpsz5UVvO4DKw8yOYg2ikUuHrgdUKX//93yNyrHPgQSoRph/zEw1TWgNwWnXPo9XjRWt+QYz1hV69Ut4ONoRCQYlRmdXSMaQojQDTwX6/t8cFzSRjLk1dzuitTDJ+M9LK1rLCxawQGMo51GdbzwmEBBAKxHA7umoTeyvYTicTGtSZa4kJlnWkMWT1zgdbfjVaKhc/nxkjpDReyEUSxWn0RV8YSnk1cSdVXzgm3ZN1iJ6kgBgefJKjkS1p/rpS8j2+gesnCbGISYjXc9PM/WEH+HP7n+42ue37NqOACsPOBLX8SW+KOzsaI7IL1JxM9kroddnDaq8dhR6HRv/e+A9+rk7DaDRnoEk/IrWDD9y7BDrzFeBFH1qYoVcrn3i6akMJ/2fWjbenQ46+tyvOZjnioih1BUtqOLN0ZUIaakKaSxS1SJpb5LAhSEg3gJozYPLdOPKim42ms7Q39beYAzcFmfLr3DrAvlk=
EndOfMessage

# Networking
aaa_vpc_aaa-name = "network"

aaa_router_aaa-name = "router"
aaa_router_aaa-region = "us-central1"

aaa_router_nat_aaa-name = "router-nat"
aaa_router_nat_aaa-count = 1 # Number of addresses available for Cloud NAT

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
bbb_instance_aaa-count = 2
bbb_instance_aaa-tags = [
  "openshift",
  "openshift-lb",
  "all"]
bbb_instance_aaa-type = "e2-highcpu-2"
bbb_instance_aaa-cidr = "10.0.13.0/24"

# Instance (Openshift - Master)
bbb_instance_bbb-name = "openshift-master"
bbb_instance_bbb-image = "centos-cloud/centos-7"
bbb_instance_bbb-count = 2
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