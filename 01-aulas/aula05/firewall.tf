resource "google_compute_firewall" "default" {
  name    = "vpc-network-allow-ping"
  network = google_compute_network.vpc_network.self_link

  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }

}