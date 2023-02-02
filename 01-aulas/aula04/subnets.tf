resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  ip_cidr_range = "10.0.0.0/22"
  region        = "us-central1"
  network       = "vpc-network"
}

resource "google_compute_subnetwork" "subnet2" {
  name          = "subnet2"
  ip_cidr_range = "10.0.4.0/22"
  region        = "us-west1"
  network       = "vpc-network"
}