data "aws_caller_identity" "current" {}

terraform {
  required_version = "~> 1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "tf-state-{account-id}"
    dynamodb_table = "tf-state-lock"
    key            = "my-project/terraform.tfstate"
    region         = "eu-west-1"
  }
}
