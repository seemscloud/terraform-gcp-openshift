module "networking" {
  source = "./networking"

  # Region / Zone
  aaa_region_aaa = var.aaa_region_aaa
  aaa_zone_aaa = var.aaa_zone_aaa

  # Networking
  aaa_vpc_aaa-name = local.aaa_vpc_aaa-name

  aaa_router_aaa-name = local.aaa_router_aaa-name
  aaa_router_aaa-region = var.aaa_router_aaa-region

  aaa_router_nat_aaa-name = local.aaa_router_nat_aaa-name
  aaa_router_nat_aaa-count = var.aaa_router_nat_aaa-count

  aaa_dns_aaa-name = var.aaa_dns_aaa-name
  aaa_dns_aaa-dns_name = var.aaa_dns_aaa-dns_name

  # Instances (Bastion)
  aaa_instance_aaa-name = local.aaa_instance_aaa-name
  aaa_instance_aaa-cidr = var.aaa_instance_aaa-cidr

  # Instances (Openshift - Load Balancer)
  bbb_instance_aaa-name = local.bbb_instance_aaa-name
  bbb_instance_aaa-count = var.bbb_instance_aaa-count
  bbb_instance_aaa-cidr = var.bbb_instance_aaa-cidr

  # Instances (Openshift - Master)
  bbb_instance_bbb-name = local.bbb_instance_bbb-name
  bbb_instance_bbb-count = var.bbb_instance_bbb-count
  bbb_instance_bbb-cidr = var.bbb_instance_bbb-cidr

  # Instances (Openshift - Compute)
  bbb_instance_ccc-name = local.bbb_instance_ccc-name
  bbb_instance_ccc-count = var.bbb_instance_ccc-count
  bbb_instance_ccc-cidr = var.bbb_instance_ccc-cidr

  # Instances (Openshift - Infrastructure)
  bbb_instance_ddd-name = local.bbb_instance_ddd-name
  bbb_instance_ddd-count = var.bbb_instance_ddd-count
  bbb_instance_ddd-cidr = var.bbb_instance_ddd-cidr

  # Instances (Openshift - etcd)
  bbb_instance_eee-name = local.bbb_instance_eee-name
  bbb_instance_eee-count = var.bbb_instance_eee-count
  bbb_instance_eee-cidr = var.bbb_instance_eee-cidr
}