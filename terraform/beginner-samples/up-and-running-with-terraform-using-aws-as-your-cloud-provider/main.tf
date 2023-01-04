provider "aws" {
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "a" {
  bucket = "${var.tf_s3_bucket_name}-${data.aws_caller_identity.current.account_id}"
  tags = {
    Name : "Terraform Bucket"
    Environment : "Prototype"
  }
}
