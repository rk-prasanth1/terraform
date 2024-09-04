output "public_ip_address" {
  description = "ec2 instance public ip address"
  value       = aws_instance.instance.public_ip

}
