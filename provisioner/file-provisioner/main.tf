resource "aws_instance" "file_provisioner" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = file("terraform-key.pub")
  security_groups = ["file-provisioner"]

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("terraform-key")
    host        = self.public_ip
  }


  provisioner "file" {
    source      = "./init.sh"
    destination = "/etc/init.sh"
  }

  tags = {
    Name        = "file provisioner"
    Environment = "testing purpose"
  }
}
