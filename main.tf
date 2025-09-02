terraform {
  required_providers {
    google = {
      source  = "hashcorp/google"
      version = "~> 5.10"
    }
  }
}

provider "google" {
  # This configuration is intentionally left minimal.
  # Credentials will be configured via the CI/CD pipeline using
  # Workload Identity Federation. When running locally, authentication
  # will be handled by the gcloud CLI (run `gcloud auth application-default login`).
}