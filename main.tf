resource "aws_vpc" "base" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "From_Terraform"
  }

}
resource "aws_subnet" "One" {
  vpc_id            = aws_vpc.base.id
  availability_zone = "ap-south-1a"
  cidr_block        = "192.168.1.0/24"
  tags = {
    Name = "web-01"
  }

}
resource "aws_subnet" "two" {
  vpc_id            = aws_vpc.base.id
  availability_zone = "ap-south-1b"
  cidr_block        = "192.168.2.0/24"
  tags = {
    Name = "web-02"
  }

}
resource "aws_subnet" "three" {
  vpc_id            = aws_vpc.base.id
  availability_zone = "ap-south-1a"
  cidr_block        = "192.168.3.0/24"
  tags = {
    Name = "app-01"
  }

}
resource "aws_subnet" "four" {
  vpc_id            = aws_vpc.base.id
  availability_zone = "ap-south-1b"
  cidr_block        = "192.168.4.0/24"
  tags = {
    Name = "app-2"
  }

}
