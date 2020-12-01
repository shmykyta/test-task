variable "name" {
  description = "GCP VPC name of network"
  type        = string
}

variable "project" {
  description = "GCP ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "ip_range" {
  description = "Range of IP subnet"
  type        = string
}