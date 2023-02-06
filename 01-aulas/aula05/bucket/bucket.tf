resource "google_storage_bucket" "terraform-8249-state" {
  name     = "terraform-8249-state"
  location = "US-CENTRAL1"

  versioning {
    enabled = true
  }
}