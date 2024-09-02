resource "aws_instance" "instance" {
  instance_type = var.instance_type
  ami           = var.ami_id

  tags = {
    Name = "sample terraform ec2"
  }

}
