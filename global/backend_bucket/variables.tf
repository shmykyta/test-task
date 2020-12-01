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