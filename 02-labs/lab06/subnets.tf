resource "google_compute_subnetwork" "subnets" {

  count = length(var.subnet_regions)

  name = format("%s-%s-%s", var.subnet_prefix, count.index, var.vpc_name)

  ip_cidr_range = var.subnets_cidr[count.index]
  region        = var.subnet_regions[count.index]

  network = google_compute_network.tf-vpc-lab.self_link

}