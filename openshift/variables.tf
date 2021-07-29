# Location
variable "aaa_zone_aaa" {
  type = string
}

# Metadata (SSH)
variable "aaa_metadata_bbb-name" {
  type = string
}

variable "aaa_metadata_bbb-pub_key" {
  type = string
}

# Instances (Openshift - Load Balancer)
variable "bbb_instance_aaa-name" {
  type = string
}

variable "bbb_instance_aaa-image" {
  type = string
}

variable "bbb_instance_aaa-count" {
  type = number
}

variable "bbb_instance_aaa-tags" {
  type = list(string)
}

variable "bbb_instance_aaa-cidr" {
  type = string
}

variable "bbb_instance_aaa-external_addresses" {
  type = list(string)
}

variable "bbb_instance_aaa-type" {
  type = string
}

# Instances (Openshift - Master)
variable "bbb_instance_bbb-name" {
  type = string
}

variable "bbb_instance_bbb-image" {
  type = string
}

variable "bbb_instance_bbb-count" {
  type = number
}

variable "bbb_instance_bbb-tags" {
  type = list(string)
}

variable "bbb_instance_bbb-cidr" {
  type = string
}

variable "bbb_instance_bbb-external_addresses" {
  type = list(string)
}

variable "bbb_instance_bbb-type" {
  type = string
}

# Instances (Openshift - Compute)
variable "bbb_instance_ccc-name" {
  type = string
}

variable "bbb_instance_ccc-image" {
  type = string
}

variable "bbb_instance_ccc-count" {
  type = number
}

variable "bbb_instance_ccc-tags" {
  type = list(string)
}

variable "bbb_instance_ccc-cidr" {
  type = string
}

//variable "bbb_instance_ccc-external_addresses" {
//  type = list(string)
//}

variable "bbb_instance_ccc-type" {
  type = string
}

# Instances (Openshift - Infrastructure)
variable "bbb_instance_ddd-name" {
  type = string
}

variable "bbb_instance_ddd-image" {
  type = string
}

variable "bbb_instance_ddd-count" {
  type = number
}

variable "bbb_instance_ddd-tags" {
  type = list(string)
}

variable "bbb_instance_ddd-cidr" {
  type = string
}

//variable "bbb_instance_ddd-external_addresses" {
//  type = list(string)
//}

variable "bbb_instance_ddd-type" {
  type = string
}

# Dependencies
variable "dependencies" {
  type = list(string)
}