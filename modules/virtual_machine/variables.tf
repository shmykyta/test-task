variable "project_id" {
  description = "GCP project id"
  default     = ""
}

variable "region" {
  description = "GCP region name [us-central1]"
  default     = ""
}

variable "zone" {
  description = "GCP zone name [us-central1-a]"
  default     = ""
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "machine_type" {
  description = "GCP instance type, for example 'n1-standard-1'"
  default     = ""
}

variable "machine_image" {
  description = "GCP instance image, for example 'ubuntu-os-cloud/ubuntu-1804-bionic-v20201201'"
  default     = ""
}

variable "machine_boot_disk_size" {
  description = "GCP instance boot disk size in gigabytes, for example '200'"
  default     = 10
}

variable "vpc_subnetwork" {
  description = "GCP VPC subnetwork to attach main interface to"
  default     = ""
}

variable "ip_address" {
  description = "IP address to assign to instance"
  default     = ""
}

variable "additional_vm_tags" {
  description = "Additional tags for VM (for firewall rules assignment)"
  default     = []
  type        = list(string)
}