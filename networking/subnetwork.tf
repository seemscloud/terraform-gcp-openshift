resource "google_compute_subnetwork" "aaa_instance_aaa" {
  name = var.aaa_instance_aaa-name
  ip_cidr_range = var.aaa_instance_aaa-cidr
  region = var.aaa_region_aaa
  network = google_compute_network.aaa_vpc_aaa-name.id

  depends_on = [
    google_compute_network.aaa_vpc_aaa-name]
}

resource "google_compute_subnetwork" "bbb_instance_aaa" {
  name = var.bbb_instance_aaa-name
  ip_cidr_range = var.bbb_instance_aaa-cidr
  region = var.aaa_region_aaa
  network = google_compute_network.aaa_vpc_aaa-name.id

  depends_on = [
    google_compute_network.aaa_vpc_aaa-name]
}

resource "google_compute_subnetwork" "bbb_instance_bbb" {
  name = var.bbb_instance_bbb-name
  ip_cidr_range = var.bbb_instance_bbb-cidr
  region = var.aaa_region_aaa
  network = google_compute_network.aaa_vpc_aaa-name.id

  depends_on = [
    google_compute_network.aaa_vpc_aaa-name]
}

resource "google_compute_subnetwork" "bbb_instance_ccc" {
  name = var.bbb_instance_ccc-name
  ip_cidr_range = var.bbb_instance_ccc-cidr
  region = var.aaa_region_aaa
  network = google_compute_network.aaa_vpc_aaa-name.id

  depends_on = [
    google_compute_network.aaa_vpc_aaa-name]
}

resource "google_compute_subnetwork" "bbb_instance_ddd" {
  name = var.bbb_instance_ddd-name
  ip_cidr_range = var.bbb_instance_ddd-cidr
  region = var.aaa_region_aaa
  network = google_compute_network.aaa_vpc_aaa-name.id

  depends_on = [
    google_compute_network.aaa_vpc_aaa-name]
}
