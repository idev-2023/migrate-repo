terraform {
  cloud {
    organization = "terraform-cloud-org1"

    workspaces {
      name = "production"
    }
  }
 }

resource "aws_s3_bucket" "main" {
  bucket_prefix = "migrate-me"
}