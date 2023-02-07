resource "google_compute_disk" "default" {
  name = "test-disk"
  type = "pd-ssd"
  zone = local.db_data_zone
  size = var.db_disk_size
}