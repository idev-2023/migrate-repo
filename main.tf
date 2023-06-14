terraform {
   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

  cloud {
    organization = "terraform-cloud-organization7777"

    workspaces {
      name = "production"
    }
  }
}

resource "aws_s3_bucket" "main" {
  bucket_prefix = "migrate-me"
}
