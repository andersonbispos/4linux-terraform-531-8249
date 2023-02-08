data "google_compute_disk" "data-boot-disk" {
  name = "data-disk"
  zone = "us-central1-a"
}