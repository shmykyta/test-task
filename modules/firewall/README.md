# network module

## Description

Creates allow INGRESS rule with specific tag (VM)

## Usage

```terraform
module "firewall" {
  source        = "../../modules/firewall"
  name          = var.env
  network       = format("%s-network", var.env)
  ports         = var.vm_open_ports
  source_ranges = ["0.0.0.0/0"]
}
```

## Resources Created

- Firewall allow rule

## Known issues

No

## Requirements

- terraform version => v0.13.0
- google provider version ~> 3.49