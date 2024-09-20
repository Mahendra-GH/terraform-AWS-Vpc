resource "aws_vpc" "base" {
  cidr_block = var.Vpc_Config.cidr_block
  tags = {
    Name = var.Vpc_Config.name
  }

}
resource "aws_subnet" "subnets" {
  count             = length(var.Subnet_info)
  vpc_id            = aws_vpc.base.id
  availability_zone = var.Subnet_info[count.index].availability_zone
  cidr_block        = var.Subnet_info[count.index].cidr_block
  tags = {
    #count=4
    Name = var.Subnet_info[count.index].name
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
