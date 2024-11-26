# Terraform Remote State Datasource
/*
data "terraform_remote_state" "eks" {
  backend = "local"
  config = {
    path = "../eksOnlySetUp/terraform.tfstate"
  }
}
*/

# Terraform Remote State Datasource - Remote Backend AWS S3
data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "my-tf-test-bucket-backend"
    key    = "eksOnlySetUp/terraform.tfstate" # path & file which will hold the state #
    region = "ap-south-1"
  }
}