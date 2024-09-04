resource "aws_instance" "instance" {
  instance_type = var.instance_type
  ami           = var.ami_id
  key_name      = aws_key_pair.testing_key.key_name
  tags = {
    Environment = "dev"
    Name        = "sample terraform ec2"
  }
}
