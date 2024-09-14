# private and public sunet for ap-south-1a

resource "aws_subnet" "private_subnet_1a" {
  vpc_id     = aws_vpc.eks_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "eks subnet private1"
    "kubernetes.io/role/internal-elb" = "1"
  }
}

resource "aws_subnet" "public_subnet_1a" {
  vpc_id     = aws_vpc.eks_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "eks subnet public1"
    "kubernetes.io/role/elb" = "1"
  }
}

# private and public subnets for ap-south-1b

resource "aws_subnet" "private_subnet_1b" {
  vpc_id     = aws_vpc.eks_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "eks subnet private2"
    "kubernetes.io/role/internal-elb" = "1"
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id     = aws_vpc.eks_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "eks subnet public2"
    "kubernetes.io/role/elb" = "1"
  }
}