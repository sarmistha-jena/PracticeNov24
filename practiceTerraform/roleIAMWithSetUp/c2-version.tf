terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31"
    }
  }

  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "my-tf-test-bucket-backend"
    key    = "roleIAMWithSetUp/terraform.tfstate" # path & file which will hold the state #
    region = "ap-south-1"
    #dynamodb_table = "terraform-lock"
    encrypt        = "true"
    # For State Locking
    #dynamodb_table = "dev-ekscluster"
  }
}

provider "aws" {
  region = var.aws_region
}
