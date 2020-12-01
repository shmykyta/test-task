data "template_file" "init" {
  template = file("${path.module}/template/bootstrap.sh")
}

data "google_compute_subnetwork" "vm" {
  name = var.vpc_subnetwork
}

resource "google_compute_address" "vm" {
  name = var.labels["env"]
}

resource "google_compute_instance" "vm" {
  name         = var.labels["env"]
  machine_type = var.machine_type
  zone         = var.zone

  allow_stopping_for_update = true

  labels = var.labels

  tags = concat([var.labels["env"]], var.additional_vm_tags)

  metadata_startup_script = data.template_file.init.rendered

  boot_disk {
    initialize_params {
      image = var.machine_image
      size  = var.machine_boot_disk_size
      type  = "pd-ssd"
    }
  }

  scheduling {
    automatic_restart = true
  }

  network_interface {
    subnetwork = data.google_compute_subnetwork.vm.self_link
    network_ip = var.ip_address

    access_config {
      nat_ip = google_compute_address.vm.address
    }
  }
}
