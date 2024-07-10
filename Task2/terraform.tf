terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.37.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = var.project_id
  region      = "us-west1"
  credentials = "keys.json"
}