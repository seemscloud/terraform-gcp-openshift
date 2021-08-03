resource "google_compute_instance" "bbb_instance_ddd" {
  name = "${var.bbb_instance_ddd-name}-${count.index}"
  machine_type = var.bbb_instance_ddd-type

  count = var.bbb_instance_ddd-count

  zone = var.aaa_zone_aaa

  tags = var.bbb_instance_ddd-tags

  boot_disk {
    initialize_params {
      image = var.bbb_instance_ddd-image

      size = 100
    }
  }

  network_interface {
    subnetwork = var.bbb_instance_ddd-subnetwork_name

//    access_config {
//      nat_ip = element(var.bbb_instance_ddd-external_addresses, count.index)
//    }
  }

  metadata = {
    ssh-keys = var.aaa_metadata_bbb-pub_key
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}