# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.70"
      version = ">= 4.65"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "my-tf-test-bucket-backend"
    key    = "ebsAddOn/terraform.tfstate" # path & file which will hold the state #
    region = "ap-south-1"
    #dynamodb_table = "terraform-lock"
    #encrypt        = "true"
    # For State Locking
    #dynamodb_table = "dev-ekscluster"
  }
}