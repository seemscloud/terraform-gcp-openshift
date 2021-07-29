locals {
  aaa_prefix_aaa-name = "a${random_string.aaa_prefix_aaa.result}"

  # Networking
  aaa_vpc_aaa-name = "${local.aaa_prefix_aaa-name}-${var.aaa_vpc_aaa-name}"
  aaa_router_aaa-name = "${local.aaa_prefix_aaa-name}-${var.aaa_router_aaa-name}"
  aaa_router_nat_aaa-name = "${local.aaa_prefix_aaa-name}-${var.aaa_router_nat_aaa-name}"

  # Instance (Bastion)
  aaa_instance_aaa-name = "${local.aaa_prefix_aaa-name}-${var.aaa_instance_aaa-name}"

  # Instance (Openshift)
  bbb_instance_aaa-name = "${local.aaa_prefix_aaa-name}-${var.bbb_instance_aaa-name}"
  bbb_instance_bbb-name = "${local.aaa_prefix_aaa-name}-${var.bbb_instance_bbb-name}"
  bbb_instance_ccc-name = "${local.aaa_prefix_aaa-name}-${var.bbb_instance_ccc-name}"
  bbb_instance_ddd-name = "${local.aaa_prefix_aaa-name}-${var.bbb_instance_ddd-name}"
}