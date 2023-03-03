resource "aws_vpc" "vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"

  tags = {
    Name = "Pratyank Chauhan"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
}

resource "aws_subnet" "pratyank_subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "Pratyank Chauhan"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "Pratyank Chauhan"
    Owner = "pratyank.chauhan@cloudeq.com"
  }
}