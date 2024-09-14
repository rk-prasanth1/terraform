# route table public

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.eks_vpc.id

# Route the
  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public route table"
  }
}

# public route table associate with public subnets

resource "aws_route_table_association" "public_subnet_1a" {
  subnet_id      = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_subnet_1b" {
  subnet_id      = aws_subnet.public_subnet_1b.id
  route_table_id = aws_route_table.public_rt.id
}