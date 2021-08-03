# Region / Zone
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

variable "aaa_router_aaa-name" {
  type = string
}

variable "aaa_router_aaa-region" {
  type = string
}

variable "aaa_router_nat_aaa-name" {
  type = string
}

variable "aaa_router_nat_aaa-count" {
  type = string
}

# Metadata (SSH)
variable "aaa_metadata_aaa-name" {
  type = string
}

variable "aaa_metadata_aaa-pub_key" {
  type = string
}

variable "aaa_metadata_bbb-name" {
  type = string
}

variable "aaa_metadata_bbb-pub_key" {
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

variable "aaa_instance_aaa-cidr" {
  type = string
}

variable "aaa_instance_aaa-type" {
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

variable "bbb_instance_aaa-type" {
  type = string
}

# Instance (Openshift - Master)
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

variable "bbb_instance_bbb-type" {
  type = string
}

# Instance (Openshift - Compute)
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

variable "bbb_instance_ccc-type" {
  type = string
}

# Instance (Openshift - Infrastructure)
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

variable "bbb_instance_ddd-type" {
  type = string
}

# Instance (Openshift - etcd)
variable "bbb_instance_eee-name" {
  type = string
}

variable "bbb_instance_eee-image" {
  type = string
}

variable "bbb_instance_eee-count" {
  type = number
}

variable "bbb_instance_eee-tags" {
  type = list(string)
}

variable "bbb_instance_eee-cidr" {
  type = string
}

variable "bbb_instance_eee-type" {
  type = string
}