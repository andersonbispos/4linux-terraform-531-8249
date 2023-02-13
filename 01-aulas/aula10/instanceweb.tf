resource "google_compute_instance" "web1" {

  name = format("%s-%s", "web1", terraform.workspace)
  //name         = "web1"
  machine_type = "e2-small"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {
    }
  }

  allow_stopping_for_update = true

}