provider "aws" {
  region = "us-east-1" 
}

resource "aws_s3_bucket" "my-test-bucket-terraform" {
  bucket = "my-tf-test-bucket"
  acl = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManegedBy = "Terraform"
  }
}
 