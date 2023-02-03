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
    network    = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {

    }
  }

  allow_stopping_for_update = true

  depends_on = [
    google_compute_instance.db
  ]

}

resource "google_compute_instance" "web2" {
  name         = "web2"
  machine_type = "e2-small"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet2.self_link

    access_config {

    }
  }

  allow_stopping_for_update = true

  depends_on = [
    google_compute_instance.db
  ]

}