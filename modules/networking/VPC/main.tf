resource "aws_vpc" "main" {
  cidr_block       = var.aws_vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support

  tags = {
    Name = "${var.environment}-vpc"
  }
}

resource "aws_subnet" "public_subnet_01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_01_cidr
  availability_zone = var.public_subnet_01_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.public_subnet_01_availability_zone}-public_subnet_01"
  }
}


resource "aws_subnet" "private_subnet_01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_01_cidr
  availability_zone = var.private_subnet_01_availability_zone


  tags = {
    Name = "${var.private_subnet_01_availability_zone}-private_subnet_01"
  }
}


resource "aws_internet_gateway" "fctp_igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.environment}-igw"
  }
}


resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.fctp_igw.id
  }

  tags = {
    Name = "${var.environment}-public_rt"
  }
}


resource "aws_route_table_association" "public_subnet_asso" {
  subnet_id      = aws_subnet.public_subnet_01.id
  route_table_id = aws_route_table.public_rt.id
}