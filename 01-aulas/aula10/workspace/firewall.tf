resource "google_compute_firewall" "allow_default_ports" {

  name = format("%s-%s", "allow-default-ports", terraform.workspace)

  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

}