terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "cicd-test-project-486709"
  region  = "europe-west2"
}

resource "google_storage_bucket" "demo" {
  name                        = "artemis-ci-bucket-20260207-001"
  location                    = "EU"
  uniform_bucket_level_access = true
  force_destroy               = true
}

#test