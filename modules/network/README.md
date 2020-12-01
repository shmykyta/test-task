# network module

## Description

Creates GCP VPC with subnet and open internal ssh port

## Usage

```terraform
module "dev-network" {
  source   = "../../modules/network"
  name     = var.name
  project  = var.project
  region   = var.region
  ip_range = var.ip_range
}
```

## Resources Created

- Network
- Subnetwork with any IP address
- Rule to allow internal ssh

## Known issues

No

## Requirements

- terraform version => v0.13.0
- google provider version ~> 3.49