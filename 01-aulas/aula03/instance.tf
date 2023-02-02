resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-small"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = "vpc-network"
    subnetwork = "subnet1"
  }

  attached_disk {
    source = "test-disk"
  }

  allow_stopping_for_update = true
}