resource "google_compute_subnetwork" "subnet1" {

  name          = format("%s-%s", "subnet", terraform.workspace)
  ip_cidr_range = "10.0.0.0/22"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.self_link
}