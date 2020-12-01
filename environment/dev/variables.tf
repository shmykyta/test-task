variable "project" {
  description = "GCP ID"
  type        = string
  default     = "pfefferkopf"
}

variable "bucket_name" {
  description = "GCS Bucket name for terraform state"
  type        = string
  default     = "test-terraform-state-twingate-hometask"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "subnet" {
  description = "Subnetwork for deploing instance"
  type        = string
  default     = "dev-subnet"
}

variable "env" {
  description = "virtual machine and environment name"
  type        = string
  default     = "dev"
}

variable "vm_ip_address" {
  description = "IP address of VM"
  type        = string
  default     = "10.0.0.100"
}

variable "instance_type" {
  description = "Size and type of virtual machine"
  type        = string
  default     = "n1-standard-1"
}

variable "instance_image" {
  description = "Base image for virtual machine"
  type        = string
  default     = "ubuntu-1804-bionic-v20201201"
}

variable "instance_disk_size" {
  description = "Base disk size for virtual machine"
  type        = string
  default     = "50"
}

variable "vm_open_ports" {
  description = "Open ports for ingress traffic"
  type        = list(string)
  default     = ["22", "80", "443"]
}
