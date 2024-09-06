resource "aws_key_pair" "terraform_key" {
    key_name = "terraform-intergration-key"
    public_key = file("~/.ssh/id_ed25519.pub")
  
}