variable "name" {
  description = "GCP VPC name of network"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "GCP ID"
  type        = string
  default     = "pfefferkopf"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "ip_range" {
  description = "Range of IP subnet"
  type        = string
  default     = "192.168.1.0/24"
}