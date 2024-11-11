resource "aws_instance" "server" {
  provider                    = aws.mumbai
  ami                         = "ami-08e5424edfe926b43"
  instance_type               = var.instance_type
  security_groups             = ["sg-08fbed9a4057dfe9a"]
  key_name                    = "linux-pract1"
  associate_public_ip_address = true
  tags                        = {
    Name = var.server_name
  }
}