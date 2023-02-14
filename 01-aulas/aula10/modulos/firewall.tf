resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-icmp-ssh"
  network = module.network.vpc_selflink

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}