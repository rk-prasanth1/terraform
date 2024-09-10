module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"

  name = var.vpc_name
  cidr = var.cidr

  azs             = data.aws_availability_zones.available.names
  private_subnets = var.private_subnets
  private_subnet_names = ["private-ap-south-1a", "private-ap-south-1b", "private-ap-south-1c"]
  public_subnets  = var.public_subnets
  public_subnet_names = ["public-ap-south-1a", "public-ap-south-1b", "public-ap-south-1c"]

  enable_nat_gateway = true
  single_nat_gateway = true
  one_nat_gateway_per_az = false
  enable_vpn_gateway = true
  map_public_ip_on_launch = true

  private_subnet_tags = {
    subnet = "private"
    "kubernetes.io/role/internal-elb" = "1"
  }

  public_subnet_tags = {
    subnet = "public"
    "kubernetes.io/role/elb" = "1"
  }

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}
