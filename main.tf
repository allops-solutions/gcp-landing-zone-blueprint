terraform {
  required_providers {
    google = {
      source  = "hashcorp/google"
      version = "~> 5.10"
    }
  }
}

provider "google" {
  # will be handled by the gcloud CLI (run `gcloud auth application-default login`).
}
