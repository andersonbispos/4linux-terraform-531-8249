resource "google_compute_instance" "db1" {

  count = terraform.workspace == "prod" ? 1 : 1

  name = format("%s-%s", "db1", terraform.workspace)

  machine_type = var.vm_type[terraform.workspace]
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