resource "google_compute_disk" "default" {
  name = "test-disk"
  type = "pd-ssd"
  zone = "us-central1-a"
  size = 30
}