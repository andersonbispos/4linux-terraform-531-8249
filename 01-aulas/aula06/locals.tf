locals {
  // db_data_zone = google_compute_disk.default.zone
  //db_data_size = 30
  subnet_name  = var.vpc_name
  db_data_zone = "us-central1-a"
}