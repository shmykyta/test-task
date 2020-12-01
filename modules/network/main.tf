locals {
  network = format("%s-network", var.name)
}

resource "google_compute_network" "network" {
  name    = local.network
  project = var.project
}

resource "google_compute_subnetwork" "subnet" {
  name          = format("%s-subnet", var.name)
  project       = var.project
  region        = var.region
  network       = google_compute_network.network.self_link
  ip_cidr_range = var.ip_range
}

resource "google_compute_firewall" "allow_ssh" {
  name    = format("%s-allow-ssh", var.name)
  project = var.project
  network = local.network

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}
