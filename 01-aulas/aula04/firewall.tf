resource "google_compute_firewall" "allow-icmp-ssh" {
  name    = "allow-icmp-ssh"
  network = google_compute_network.vpc_network.self_link

  priority = 500

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}