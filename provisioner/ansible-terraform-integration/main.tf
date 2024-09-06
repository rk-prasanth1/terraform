resource "aws_instance" "terraform_integration" {
    ami = var.ami_id
    instance_type = var.aws_instance
    key_name = aws_key_pair.terraform_key.key_name
    security_groups = ["terraform-integration-sg"]

    tags = {
      Name = "terraform-ansible intergration"
      Environment = "dev"
    }
  
      
}