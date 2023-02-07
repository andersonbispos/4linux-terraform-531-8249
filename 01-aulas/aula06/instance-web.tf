resource "google_compute_instance" "web1" {
  name         = var.web1_vm_name
  machine_type = var.default_vm_size
  zone         = var.web1_vm_zone

  tags = ["web", "icmp"]

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link
    access_config {

    }
  }

  metadata_startup_script = file(var.prov_script)

  allow_stopping_for_update = true
}

resource "google_compute_instance" "web2" {
  name         = var.web2_vm_name
  machine_type = var.default_vm_size
  zone         = var.web2_vm_zone

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link
    access_config {

    }
  }

  metadata_startup_script = file(var.prov_script)

  allow_stopping_for_update = true
}