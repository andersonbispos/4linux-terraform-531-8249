resource "google_compute_network" "vpc_network" {

  //name = "vpc-network-${terraform.workspace}"
  name = format("%s-%s", "vpc-network", terraform.workspace)

  auto_create_subnetworks = false
}