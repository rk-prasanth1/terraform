# route table private subnets

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.eks_vpc.id

# Route the
  route {
    cidr_block = "0.0.0.0/24"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
    Name = "private route table"
  }
}

# private subnet associate with the route table

resource "aws_route_table_association" "private_subnet_1a" {
  subnet_id      = aws_subnet.private_subnet_1a.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_subnet_1b" {
  subnet_id      = aws_subnet.private_subnet_1b.id
  route_table_id = aws_route_table.private_rt.id
}