terraform {
  cloud {
    organization = "terraform-cloud-org1"

    workspaces {
      name = "production"
    }
  }

  required_version = ">= 1.3.6"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "4.6.0"
    }
  }  
}


resource "aws_s3_bucket" "main" {
  bucket_prefix = "migrate-me"
}