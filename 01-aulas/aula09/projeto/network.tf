resource "google_compute_network" "vpc_network" {
  name = var.vpc_name

  auto_create_subnetworks = var.option_auto_create
}