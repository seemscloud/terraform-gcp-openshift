resource "google_compute_network" "aaa_vpc_aaa-name" {
  name = var.aaa_vpc_aaa-name

  auto_create_subnetworks = false
}