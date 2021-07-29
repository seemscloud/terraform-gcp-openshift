provider "google" {
  credentials = ".credentials.json"
  project = "molten-infusion-277321"

  region = var.aaa_region_aaa
  zone = var.aaa_zone_aaa
}