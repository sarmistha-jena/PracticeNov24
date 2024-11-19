variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "instance_keypair" {
  type    = string
  default = "eks-terraform-key"
}