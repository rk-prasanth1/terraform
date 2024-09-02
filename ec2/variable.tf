variable "region" {
  description = "the aws region to deploy resources"
  default     = "ap-south-1"
}
variable "ami_id" {
  description = "ami id for the instance"
  default     = "ami-0522ab6e1ddcc7055"

}
variable "instance_type" {
  description = "instance type for ec2 instance"
  default     = "t2.micro"

}
