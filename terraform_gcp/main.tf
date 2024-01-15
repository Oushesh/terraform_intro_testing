terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("env/citric-earth-199400-92e91bc6d36c.json")
  project     = "citric-earth-199400"
  region      = "europe-west3"
  zone        = "europe-west3"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "my-unique-bucket-name"
  location = "europe-west3"
  force_destroy = true
}

output "bucket_url" {
  value = google_storage_bucket.my_bucket.url
}



