# Terraform Settings Block
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.65"
      version = ">= 5.31"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      #version = "~> 2.7.1"
      version = ">= 2.20"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "my-tf-test-bucket-backend"
    key    = "umsTerraK8/terraform.tfstate" # path & file which will hold the state #
    region = "ap-south-1"

  }
}
