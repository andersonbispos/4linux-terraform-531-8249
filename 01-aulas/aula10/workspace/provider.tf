terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  //aws_profile = var.aws_profile[terraform.workspace]

  credentials = "/Users/anderson/Documents/gcp-svc/lab-terraform-8249-376522-032aed7c4f8b.json"
  project     = var.project["dev"]
  region      = "us-central1"
}