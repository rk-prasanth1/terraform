# Elastic ip for nat gateway

resource "aws_eip" "elastic_ip" {

    tags = {
      Name = "eks elastic ip"
    }
}

# Creation of nat gateway (nate gate way should create in the public subnet)

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.elastic_ip.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = {
    Name = "eks nat gw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}