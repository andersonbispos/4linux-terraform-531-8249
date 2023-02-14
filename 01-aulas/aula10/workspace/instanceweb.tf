resource "google_compute_instance" "web1" {

  count = terraform.workspace == "prod" ? 2 : 1

  name = format("%s-%s-%s", "web1", count.index, terraform.workspace)

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