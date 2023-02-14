resource "google_compute_network" "vpc_network" {
  name = var.vpc_name

  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name          = var.vpc_name
  ip_cidr_range = var.subnet_address
  region        = var.subnet_region
  network       = google_compute_network.vpc_network.self_link
}

resource "google_compute_firewall" "allow-icmp" {
  name    = "vpc-network-allow-ping"
  network = google_compute_network.vpc_network.self_link

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["icmp"]

  allow {
    protocol = "icmp"
  }

}