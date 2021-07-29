resource "google_compute_instance" "aaa_instance_aaa" {
  name = var.aaa_instance_aaa-name
  machine_type = var.aaa_instance_aaa-type

  zone = var.aaa_zone_aaa

  tags = var.aaa_instance_aaa-tags

  boot_disk {
    initialize_params {
      image = var.aaa_instance_aaa-image

      size = 100
    }
  }

  network_interface {
    subnetwork = var.aaa_instance_aaa-name

    access_config {
      nat_ip = var.aaa_instance_aaa-external_addresses
    }
  }

  metadata = {
    ssh-keys = var.aaa_metadata_aaa-pub_key
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}