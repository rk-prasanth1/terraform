variable "instance-count" {
  type    = number
  default = 3

}

variable "instance-type" {
  type    = string
  default = "t2.micro"

}

variable "ami-id" {
  type    = string
  default = "ami-0522ab6e1ddcc7055"

}

