resource "google_compute_firewall" "main" {
  name    = format("%s-allow-tcp-%s", var.network, var.name)
  network = var.network

  allow {
    protocol = "tcp"
    ports    = var.ports
  }

  target_tags   = [var.name]
  source_ranges = var.source_ranges
}
