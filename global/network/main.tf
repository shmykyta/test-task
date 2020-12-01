module "dev-network" {
  source   = "../../modules/network"
  name     = var.name
  project  = var.project
  region   = var.region
  ip_range = var.ip_range
}