resource "google_dns_managed_zone" "private-zone" {
  name        = "private-zone"
  dns_name    = "private.example.com."

  visibility = "private"

  private_visibility_config {
    networks {
      network_url = google_compute_network.aaa_vpc_aaa-name.id
    }
  }
}