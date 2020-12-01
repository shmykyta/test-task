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

module "firewall" {
  source        = "../../modules/firewall"
  name          = var.env
  network       = format("%s-network", var.env)
  ports         = var.vm_open_ports
  source_ranges = ["0.0.0.0/0"]
}
