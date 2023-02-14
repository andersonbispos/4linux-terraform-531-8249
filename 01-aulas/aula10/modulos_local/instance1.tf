resource "google_compute_instance" "web1" {
  name         = "web1"
  machine_type = "e2-small"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = module.network.subnet_selflink

    access_config {

    }
  }

  allow_stopping_for_update = true

}