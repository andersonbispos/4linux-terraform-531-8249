terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }

  /* backend "gcs" {
    bucket = "terraform-8249-state"
    prefix = "prod"
  } */

}

provider "google" {
  credentials = "/Users/anderson/Documents/gcp-svc/lab-terraform-8249-376522-032aed7c4f8b.json"
  project     = "lab-terraform-8249-376522"
  region      = "us-central1"
}