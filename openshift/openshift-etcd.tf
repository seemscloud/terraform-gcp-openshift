resource "google_compute_instance" "bbb_instance_eee" {
  name = "${var.bbb_instance_eee-name}-${count.index}"
  machine_type = var.bbb_instance_eee-type

  count = var.bbb_instance_eee-count

  zone = var.aaa_zone_aaa

  tags = var.bbb_instance_eee-tags

  boot_disk {
    initialize_params {
      image = var.bbb_instance_eee-image

      size = 100
    }
  }

  network_interface {
    subnetwork = var.bbb_instance_eee-subnetwork_name

//    access_config {
//      nat_ip = element(var.bbb_instance_ccc-external_addresses, count.index)
//    }
  }

  metadata = {
    ssh-keys = var.aaa_metadata_bbb-pub_key
  }

  allow_stopping_for_update = true

  depends_on = [
    var.dependencies]
}