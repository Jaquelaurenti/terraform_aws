terraform {
  required_version = "0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.9.0"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
  region  = "eu-central-1" # Brasil -> us-east-1
  
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#private-bucket-w-tags
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-123123455745642342342"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}
