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

# Instances (Bastion)
variable "aaa_instance_aaa-name" {
  type = string
}

variable "aaa_instance_aaa-cidr" {
  type = string
}

# Instances (Openshift - Load Balancer)
variable "bbb_instance_aaa-name" {
  type = string
}

variable "bbb_instance_aaa-count" {
  type = string
}

variable "bbb_instance_aaa-cidr" {
  type = string
}

# Instances (Openshift - Master)
variable "bbb_instance_bbb-name" {
  type = string
}

variable "bbb_instance_bbb-count" {
  type = string
}

variable "bbb_instance_bbb-cidr" {
  type = string
}

# Instances (Openshift - Compute)
variable "bbb_instance_ccc-name" {
  type = string
}

variable "bbb_instance_ccc-count" {
  type = string
}

variable "bbb_instance_ccc-cidr" {
  type = string
}

# Instances (Openshift - Infrastructure)
variable "bbb_instance_ddd-name" {
  type = string
}

variable "bbb_instance_ddd-count" {
  type = string
}

variable "bbb_instance_ddd-cidr" {
  type = string
}