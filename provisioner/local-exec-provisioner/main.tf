resource "aws_instance" "null_provisioner" {
  ami           = var.ami-id
  instance_type = var.instance-type
  count         = var.instance-count

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> ./hosts"

  }

  tags = {
    Env = "terraform-${count.index}"
  }

}

output "all-the-public-ip" {
  value = aws_instance.null_provisioner[*].public_ip

}