resource "aws_instance" "instance" {
  instance_type = var.instance_type
  ami           = var.ami_id
  disable_api_termination = var.disable_api_termination

  tags = {
    Name = "terraform ec2"
  }

}
