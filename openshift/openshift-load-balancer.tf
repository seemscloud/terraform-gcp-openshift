resource "google_compute_instance" "bbb_instance_aaa" {
  name = "${var.bbb_instance_aaa-name}-${count.index}"
  machine_type = var.bbb_instance_aaa-type

  count = var.bbb_instance_aaa-count

  zone = var.aaa_zone_aaa

  tags = var.bbb_instance_aaa-tags

  boot_disk {
    initialize_params {
      image = var.bbb_instance_aaa-image

      size = 100
    }
  }

  network_interface {
    subnetwork = var.bbb_instance_aaa-subnetwork_name

    access_config {
      nat_ip = element(var.bbb_instance_aaa-external_addresses, count.index)
    }
  }

  metadata = {
    ssh-keys = var.aaa_metadata_bbb-pub_key
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}