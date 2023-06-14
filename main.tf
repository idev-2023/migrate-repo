terraform {
  backend "s3" {
    bucket = "terraform-state-acg1"
    key = "state.tfstate"
    region = "us-west-1"
  }

  required_version = "1.3.6"
}

resource "aws_s3_bucket" "main" {
  bucket_prefix = "migrate-me"
}
