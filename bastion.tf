module "bastion" {
  source = "./bastion"

  # Location
  aaa_region_aaa = var.aaa_region_aaa
  aaa_zone_aaa = var.aaa_zone_aaa

  # Metadata (SSH)
  aaa_metadata_aaa-name = var.aaa_metadata_aaa-name
  aaa_metadata_aaa-pub_key = var.aaa_metadata_aaa-pub_key

  # Networking
  aaa_vpc_aaa-name = var.aaa_vpc_aaa-name

  # Instance
  aaa_instance_aaa-name = local.aaa_instance_aaa-name
  aaa_instance_aaa-image = var.aaa_instance_aaa-image
  aaa_instance_aaa-tags = var.aaa_instance_aaa-tags
  aaa_instance_aaa-type = var.aaa_instance_aaa-type
  aaa_instance_aaa-cidr = var.aaa_instance_aaa-cidr
  aaa_instance_aaa-external_addresses = module.networking.aaa_instance_aaa-external_address
  aaa_instance_aaa-subnetwork_name = module.networking.aaa_instance_aaa-subnetwork_name

  dependencies = [
    "module.networking"]
}