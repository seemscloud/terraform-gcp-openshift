resource "google_compute_address" "aaa_instance_aaa-external" {
  name = var.aaa_instance_aaa-name

  region = var.aaa_region_aaa
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
}

resource "google_compute_address" "bbb_instance_aaa-external" {
  name = "${var.bbb_instance_aaa-name}-${count.index}"

  count = var.bbb_instance_aaa-count

  region = var.aaa_region_aaa
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
}

resource "google_compute_address" "bbb_instance_bbb-external" {
  name = "${var.bbb_instance_bbb-name}-${count.index}"

  count = var.bbb_instance_bbb-count

  region = var.aaa_region_aaa
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
}

//resource "google_compute_address" "bbb_instance_ccc-external" {
//  name = "${var.bbb_instance_ccc-name}-${count.index}"
//
//  count = var.bbb_instance_ccc-count
//
//  region = var.aaa_region_aaa
//  address_type = "EXTERNAL"
//  network_tier = "PREMIUM"
//}
//
//resource "google_compute_address" "bbb_instance_ddd-external" {
//  name = "${var.bbb_instance_ddd-name}-${count.index}"
//
//  count = var.bbb_instance_ddd-count
//
//  region = var.aaa_region_aaa
//  address_type = "EXTERNAL"
//  network_tier = "PREMIUM"
//}

resource "google_compute_address" "aaa_router_nat_aaa" {
  name = "${var.aaa_router_nat_aaa-name}-${count.index}"

  count = var.aaa_router_nat_aaa-count

  region = var.aaa_region_aaa
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
}