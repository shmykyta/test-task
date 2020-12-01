variable "projects" {
  description = "GCP ID"
  type        = list(string)
  default     = ["pfefferkopf"]
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "dev_group" {
  description = "Main email for dev team"
  type        = string
  default     = "dev@twingate.com"
}

variable "dev_role_id" {
  description = "Role ID for dev team"
  type        = string
  default     = "devsLogin"
}

variable dev_team_roles {
  description = "Role binding for dev team"
  type = list(string)
  default = [
    "roles/compute.osAdminLogin"
  ]
}

variable dev_addon_perms {
  description = "Custom dev Permissions to resources"
  type        = list(string)
  default = [
    "resourcemanager.projects.get"
  ]
}