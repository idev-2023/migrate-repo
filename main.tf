terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
  required_version = ">= 1.1.0"
}

  cloud {
    organization = "terraform-cloud-org1"

    workspaces {
      name = "production"
    }
  }


resource "aws_s3_bucket" "main" {
  bucket_prefix = "migrate-me"
}