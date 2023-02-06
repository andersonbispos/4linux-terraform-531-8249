resource "google_storage_bucket" "state-bucket" {
  name     = "abs2023-state-bucket"
  location = "US-CENTRAL1"

  force_destroy = true

  versioning {
    enabled = true
  }
}