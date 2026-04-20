terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.28.0"
    }
  }
}

provider "google" {
  project = "sonic-earth-493610-q1"
  region  = "europe-west1"
}


resource "google_storage_bucket" "demo-bucket" {
  name          = "sonic-earth-493610-terra-bucket"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}