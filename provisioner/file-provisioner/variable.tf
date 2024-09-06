variable "region" {
  description = "region for ec2 instance"
  default     = "ap-south-1"

}

variable "instance_type" {
  type    = string
  default = "t2.micro"

}

variable "ami" {
  type    = string
  default = "ami-02b49a24cfb95941c"
}