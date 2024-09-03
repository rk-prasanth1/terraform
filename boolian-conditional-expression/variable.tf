variable "region" {
  description = "the aws region to deploy resources"
  default     = "ap-south-1"
}
variable "ami_id" {
  description = "ami id for the instance"
  default     = "ami-0522ab6e1ddcc7055"

}

variable "its_prod" {
  description = "boolian flag will indicate"
  type = bool
  default = false
}