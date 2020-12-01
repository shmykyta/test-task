variable "name" {
  description = "GCP VPC name of network"
  type        = string
}

variable "project" {
  description = "GCP ID where network will be created"
  type        = string
}

variable "region" {
  description = "GCP region for network"
  type        = string
  default     = "us-central1"
}

variable "ip_range" {
  description = "Range of IP subnet"
  type        = string
}

variable "auto_create_subnetworks" {
  description = "By default network create bunch of subnets"
  type        = bool
  default     = false
}