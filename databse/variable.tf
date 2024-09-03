variable "aws_region" {
  default = "eu-north-1"
}

variable "allocated_storage" {
  type    = number
  default = 10
}

variable "db_name" {
  default = "testing_db"
}

variable "engine" {
  default = "MySQL"
}

variable "engine_version" {
  default = "8.0"

}

variable "instance_class" {
  default = "db.t3.micro"
}

variable "username" {
  default = "master"
}

variable "password" {
  sensitive = true

}