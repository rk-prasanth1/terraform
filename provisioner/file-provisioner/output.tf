output "public_ip" {
  description = "public ip for the instance"
  value       = aws_instance.file_provisioner.public_ip

}