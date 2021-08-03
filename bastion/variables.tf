# Metadata (SSH)
variable "aaa_metadata_aaa-name" {
  type = string
}

variable "aaa_metadata_aaa-pub_key" {
  type = string
}

# Location
variable "aaa_region_aaa" {
  type = string
}

variable "aaa_zone_aaa" {
  type = string
}

# Networking
variable "aaa_vpc_aaa-name" {
  type = string
}

# Instances (Bastion)
variable "aaa_instance_aaa-name" {
  type = string
}

variable "aaa_instance_aaa-image" {
  type = string
}

variable "aaa_instance_aaa-tags" {
  type = list(string)
}

variable "aaa_instance_aaa-type" {
  type = string
}

variable "aaa_instance_aaa-cidr" {
  type = string
}

variable "aaa_instance_aaa-external_addresses" {
  type = string
}

variable "aaa_instance_aaa-subnetwork_name" {
  type = string
}

# Dependencies
variable "dependencies" {
  type = list(string)
}