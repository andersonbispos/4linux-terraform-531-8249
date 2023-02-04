resource "google_storage_bucket" "terraform-8249-lab" {
  name          = "terraform-8249-lab"
  location      = "US-CENTRAL1"

    versioning {
        enabled = true
    }
}