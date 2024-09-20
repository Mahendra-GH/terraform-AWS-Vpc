# variable "vpc_cidr" {
#     type = string
#     default = "192.168.0.0/16"
#     description = "Vpc_Cidr_block"

# }
#####Complex Variable#######
### Creating cidr and name in single variable(Object)
variable "Vpc_Config" {
  type = object({
    name       = string
    cidr_block = string
  })
  default = {
    name       = "ntire"
    cidr_block = "192.168.0.0/16"
  }

}

# variable "subnet_cidr_range" {
#     type = list(string)
#     default = [ "192.168.1.0/24" ,"192.168.2.0/24","192.168.3.0/24","192.168.4.0/24" ]
#     description = "Subnet_cidr_blocks"

# }
# variable "subnet_names" {
#     type = list(string)
#     default = [ "web-1","web-2","db-1","db-2" ]

# }

######Complex Variable#####
###writing subnet name,subnet cidr range,availability zone in single variable(object)
variable "Subnet_info" {

  type = list(object({
    name              = string
    cidr_block        = string
    availability_zone = string
  }))
  default = [{
    name              = "web1"
    cidr_block        = "192.168.0.0/24"
    availability_zone = "ap-south-1a"

    },
    {

      name              = "web2"
      cidr_block        = "192.168.1.0/24"
      availability_zone = "ap-south-1b"
      }, {
      name              = "app"
      cidr_block        = "192.168.2.0/24"
      availability_zone = "ap-south-1a"
      }, {
      name              = "db"
      cidr_block        = "192.168.3.0/24"
      availability_zone = "ap-south-1c"
  }]
}
