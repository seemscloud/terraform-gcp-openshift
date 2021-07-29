module "instances" {
  source = "./openshift"

  # Location
  aaa_zone_aaa = "us-central1-a"

  # Metadata (SSH)
  aaa_metadata_bbb-name = var.aaa_metadata_bbb-name
  aaa_metadata_bbb-pub_key = var.aaa_metadata_bbb-pub_key

  # Instances (Openshift - Load Balancer)
  bbb_instance_aaa-name = local.bbb_instance_aaa-name
  bbb_instance_aaa-image = var.bbb_instance_aaa-image
  bbb_instance_aaa-count = var.bbb_instance_aaa-count
  bbb_instance_aaa-tags = var.bbb_instance_aaa-tags
  bbb_instance_aaa-cidr = var.bbb_instance_aaa-cidr
  bbb_instance_aaa-external_addresses = module.networking.bbb_instance_aaa-external_addresses
  bbb_instance_aaa-type = var.bbb_instance_aaa-type

  # Instances (Openshift - Master)
  bbb_instance_bbb-name = local.bbb_instance_bbb-name
  bbb_instance_bbb-image = var.bbb_instance_bbb-image
  bbb_instance_bbb-count = var.bbb_instance_bbb-count
  bbb_instance_bbb-tags = var.bbb_instance_bbb-tags
  bbb_instance_bbb-cidr = var.bbb_instance_bbb-cidr
  bbb_instance_bbb-external_addresses = module.networking.bbb_instance_bbb-external_addresses
  bbb_instance_bbb-type = var.bbb_instance_bbb-type

  # Instances (Openshift - Compute)
  bbb_instance_ccc-name = local.bbb_instance_ccc-name
  bbb_instance_ccc-image = var.bbb_instance_ccc-image
  bbb_instance_ccc-count = var.bbb_instance_ccc-count
  bbb_instance_ccc-tags = var.bbb_instance_ccc-tags
  bbb_instance_ccc-cidr = var.bbb_instance_ccc-cidr
//  bbb_instance_ccc-external_addresses = module.networking.bbb_instance_ccc-external_addresses
  bbb_instance_ccc-type = var.bbb_instance_ccc-type

  # Instances (Openshift - Infrastructure)
  bbb_instance_ddd-name = local.bbb_instance_ddd-name
  bbb_instance_ddd-image = var.bbb_instance_ddd-image
  bbb_instance_ddd-count = var.bbb_instance_ddd-count
  bbb_instance_ddd-tags = var.bbb_instance_ddd-tags
  bbb_instance_ddd-cidr = var.bbb_instance_ddd-cidr
//  bbb_instance_ddd-external_addresses = module.networking.bbb_instance_ddd-external_addresses
  bbb_instance_ddd-type = var.bbb_instance_ddd-type

  dependencies = [
    "module.defaults",
    "module.networking",
    "module.bastion"]
}