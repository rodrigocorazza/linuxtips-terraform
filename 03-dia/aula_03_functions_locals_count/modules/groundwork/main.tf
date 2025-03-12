locals {
  cidr_block_subnets = cidrsubnets(aws_vpc.main.cidr_block, 8, 8) #cidrsubnets vai criar 2 subnets com +8 bits (ex: se for /16 ele será /24)
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "main" {
  count      = 2
  vpc_id     = aws_vpc.main.id
  cidr_block = local.cidr_block_subnets[count.index] #pega o cidr_block da lista de subnets através do índece do count (0 e 1)

  tags = {
    Name = "Main"
  }
}