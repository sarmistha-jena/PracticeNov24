terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket-backend"
    key    = "default/nov24/jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}