resource "aws_instance" "instance" {
  instance_type   = var.instance_type
  ami             = var.ami_id
  key_name        = "dev"
  security_groups = ["terraform-testing-security-group"]

  tags = {
    Name       = "sample terraform ec2"
    Enviroment = "terraform"
  }

}
