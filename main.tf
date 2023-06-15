terraform {
  cloud {
    organization = "terraform-cloud-org1"

    workspaces {
      name = "production"
    }
  }

  required_version = "1.3.6"
 }

resource "aws_s3_bucket" "main" {
  bucket_prefix = "migrate-me"
}