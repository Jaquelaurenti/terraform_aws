terraform {
  

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.9.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-968339500772"
    key     = "dev/03-data-sources-s3/terraform.tfstate"
    region  = "eu-central-1"
    
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
