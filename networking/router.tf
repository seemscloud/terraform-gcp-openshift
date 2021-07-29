resource "google_compute_router" "aaa_router_aaa" {
  name = var.aaa_router_aaa-name

  region = var.aaa_router_aaa-region
  network = google_compute_network.aaa_vpc_aaa-name.id
}