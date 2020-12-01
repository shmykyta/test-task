variable "name" {
  description = "Firewall name and targetted instances tag name"
  type        = string
}

variable "network" {
  description = "Firewall network name"
  type        = string
}

variable "ports" {
  description = "List of ports and/or port ranges to allow"
  type        = list(string)
}

variable "source_ranges" {
  description = "A list of source CIDR ranges that this firewall applies to"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}