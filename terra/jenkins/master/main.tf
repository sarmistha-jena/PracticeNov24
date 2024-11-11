resource "aws_instance" "server" {
  provider      = aws.mumbai
  ami           = "ami-08e5424edfe926b43"
  instance_type = var.instance_type
  tags          = {
    Name = var.server_name
  }
}