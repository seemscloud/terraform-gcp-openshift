resource "google_compute_router_nat" "aaa_router_nat_aaa" {
  name = var.aaa_router_nat_aaa-name

  router = google_compute_router.aaa_router_aaa.name
  region = google_compute_router.aaa_router_aaa.region

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips = google_compute_address.aaa_router_nat_aaa.*.self_link

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name = google_compute_subnetwork.bbb_instance_ccc.self_link
    source_ip_ranges_to_nat = [
      "ALL_IP_RANGES"]
  }

  subnetwork {
    name = google_compute_subnetwork.bbb_instance_ddd.self_link
    source_ip_ranges_to_nat = [
      "ALL_IP_RANGES"]
  }

  subnetwork {
    name = google_compute_subnetwork.bbb_instance_eee.self_link
    source_ip_ranges_to_nat = [
      "ALL_IP_RANGES"]
  }

  depends_on = [
    google_compute_router.aaa_router_aaa,
    google_compute_address.aaa_router_nat_aaa,
    google_compute_subnetwork.bbb_instance_ccc,
    google_compute_subnetwork.bbb_instance_ddd,
    google_compute_subnetwork.bbb_instance_eee]
}