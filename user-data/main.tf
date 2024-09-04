resource "aws_instance" "instance" {
  instance_type   = var.instance_type
  ami             = var.ami_id
  key_name        = "dev"
  security_groups = ["terraform-testing-security-group"]
  user_data       = file("init.sh")

  tags = {
    Name       = "install nginx through usere data"
    Enviroment = "terraform"
  }

}
