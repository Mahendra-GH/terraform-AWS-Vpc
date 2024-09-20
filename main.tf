resource "aws_vpc" "base" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "From_Terraform"
  }

}
resource "aws_subnet" "subnets" {
    count = 4
  vpc_id            = aws_vpc.base.id
  availability_zone = "ap-south-1a"
  cidr_block        = var.subnet_cidr_range[count.index]
  tags = {
    #count=4
    Name = var.subnet_names[count.index]
  }

}
# resource "aws_subnet" "two" {
#   vpc_id            = aws_vpc.base.id
#   availability_zone = "ap-south-1b"
#   cidr_block        = var.subnet_cidr_range[1]
#   tags = {
#     Name = var.subnet_names[count.index]
#   }

# }
# resource "aws_subnet" "three" {
#   vpc_id            = aws_vpc.base.id
#   availability_zone = "ap-south-1a"
#   cidr_block        = var.subnet_cidr_range[2]
#   tags = {
#     Name = var.subnet_names[count.index]
#   }

# }
# resource "aws_subnet" "four" {
#   vpc_id            = aws_vpc.base.id
#   availability_zone = "ap-south-1b"
#   cidr_block        = var.subnet_cidr_range[3]
#   tags = {
#     Name = var.subnet_names[count.index]
#   }

# }
