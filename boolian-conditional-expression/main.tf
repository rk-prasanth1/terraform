resource "aws_instance" "instance" {
  instance_type = var.its_prod ? "t2.medium" : "t2.micro"
  ami           = var.ami_id
  
  tags = {
    Environment = var.its_prod ? "production" : "development"
    Name = "conditinal expression"
  }

}
 