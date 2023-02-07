resource "google_compute_firewall" "allow-icmp" {
  name    = "vpc-network-allow-ping"
  network = google_compute_network.vpc_network.self_link

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["icmp"]

  allow {
    protocol = "icmp"
  }

}

resource "google_compute_firewall" "allow-http" {
  name    = "vpc-network-allow-http"
  network = google_compute_network.vpc_network.self_link

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["web"]

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
}

resource "google_compute_firewall" "allow-mysql" {
  name    = "vpc-network-allow-mysql"
  network = google_compute_network.vpc_network.self_link

  source_tags = ["web"]
  target_tags = ["db"]

  allow {
    protocol = "tcp"
    ports    = ["3306"]
  }
}