# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.70"
      version = ">= 4.65"
    }
    helm = {
      source = "hashicorp/helm"
      #version = "2.4.1"
      #version = "~> 2.4"
      version = "~> 2.9"
    }
    http = {
      source = "hashicorp/http"
      #version = "2.1.0"
      #version = "~> 2.1"
      version = "~> 3.3"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "my-tf-test-bucket-backend"
    key    = "ebsTerraManifest/terraform.tfstate" # path & file which will hold the state #
    region = "ap-south-1"
    #dynamodb_table = "terraform-lock"
    #encrypt        = "true"
    # For State Locking
    #dynamodb_table = "dev-ekscluster"
  }
}
provider "http" {
  # Configuration options
}