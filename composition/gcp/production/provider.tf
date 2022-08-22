provider "google" {
  credentials = file("./credential/key.json")
  project     = var.project
  region      = var.region
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.32.0"
    }
  }

  backend "gcs" {
    bucket = "board-asia-terraform-remote-backend"
    prefix = "terraform/state"
  }
}
