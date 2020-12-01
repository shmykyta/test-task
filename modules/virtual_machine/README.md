# virtual_machine module

## Description

Creates GCP virtual machine with external IP address and install docker, docker-compose and git packages.

## Usage

```terraform
module "virtual_machine" {
  source = "../../modules/virtual_machine"

  project_id = var.project
  region     = var.region
  zone       = var.zone

  labels = {
    env           = var.env
    env_type      = "staging"
    instance_type = "virtual_machine"
  }

  machine_type           = var.instance_type
  machine_image          = var.instance_image
  machine_boot_disk_size = var.instance_disk_size
  vpc_subnetwork         = var.subnet
  ip_address             = var.vm_ip_address
}
```

## Resources Created

- GCP compute engine VM 
- External IP address

## Known issues

No

## Requirements

- terraform version => v0.13.0
- google provider version ~> 3.49
