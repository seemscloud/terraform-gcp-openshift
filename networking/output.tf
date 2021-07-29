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