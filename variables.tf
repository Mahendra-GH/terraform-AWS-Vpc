variable "vpc_cidr" {
    type = string
    default = "192.168.0.0/16"
    description = "Vpc_Cidr_block"
  
}
variable "subnet_cidr_range" {
    type = list(string)
    default = [ "192.168.1.0/24" ,"192.168.2.0/24","192.168.3.0/24","192.168.4.0/24" ]
    description = "Subnet_cidr_blocks"
  
}
variable "subnet_names" {
    type = list(string)
    default = [ "web-1","web-2","db-1","db-2" ]
  
}
