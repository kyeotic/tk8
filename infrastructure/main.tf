provider "google" {
 credentials = file("../tk8-cluster-key.json")
}

provider "google-beta" {
 credentials = file("../tk8-cluster-key.json")
}

terraform {
  required_version = "~> 0.14"
  backend "s3" {}
  required_providers {
    google = {
      version = "3.4.0"
    }
    google-beta = {
      version = "3.5.0"
    }
  }
}