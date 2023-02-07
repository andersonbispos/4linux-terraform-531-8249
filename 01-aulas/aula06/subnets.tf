resource "google_compute_subnetwork" "subnet1" {
  name          = local.subnet_name
  ip_cidr_range = var.subnet_address
  region        = var.subnet_region
  network       = google_compute_network.vpc_network.self_link
}