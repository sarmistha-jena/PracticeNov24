data "aws_ec2_instance_type_offerings" "my_instance_typ1" {
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }
  filter {
    name   = "location"
    values = ["ap-south-1"]
  }
  location_type = "availabilty-zone"
}

output "output_v1_1" {
  value = data.aws_ec2_instance_type_offerings.my_instance_typ1.instance_types
}