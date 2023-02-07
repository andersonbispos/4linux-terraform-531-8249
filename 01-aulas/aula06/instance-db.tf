resource "google_compute_instance" "db" {
  name         = "db"
  machine_type = "e2-small"
  zone         = local.db_data_zone

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

  attached_disk {
    source = google_compute_disk.default.self_link
  }

  allow_stopping_for_update = true
}