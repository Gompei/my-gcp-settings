terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.89.0"
    }
  }
  backend "gcs" {
    bucket  = "gompei-terraform-gcp-bucket"
    prefix  = "settings/terraform.tfstate"
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_path)
}
