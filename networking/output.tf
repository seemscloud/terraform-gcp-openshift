# Addresses
output "aaa_instance_aaa-external_address" {
  value = google_compute_address.aaa_instance_aaa-external.address
}

output "bbb_instance_aaa-external_addresses" {
  value = google_compute_address.bbb_instance_aaa-external.*.address
}

output "bbb_instance_bbb-external_addresses" {
  value = google_compute_address.bbb_instance_bbb-external.*.address
}

//output "bbb_instance_ccc-external_addresses" {
//  value = google_compute_address.bbb_instance_ccc-external.*.address
//}
//
//output "bbb_instance_ddd-external_addresses" {
//  value = google_compute_address.bbb_instance_ddd-external.*.address
//}

# Subnetworks
output "aaa_instance_aaa-subnetwork_name" {
  value = google_compute_subnetwork.aaa_instance_aaa.name
}

output "bbb_instance_aaa-subnetwork_name" {
  value = google_compute_subnetwork.bbb_instance_aaa.name
}

output "bbb_instance_bbb-subnetwork_name" {
  value = google_compute_subnetwork.bbb_instance_bbb.name
}

output "bbb_instance_ccc-subnetwork_name" {
  value = google_compute_subnetwork.bbb_instance_ccc.name
}

output "bbb_instance_ddd-subnetwork_name" {
  value = google_compute_subnetwork.bbb_instance_ddd.name
}

output "bbb_instance_eee-subnetwork_name" {
  value = google_compute_subnetwork.bbb_instance_eee.name
}