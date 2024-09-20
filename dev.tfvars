Vpc_Config = {
  cidr_block = "10.0.0.0/16"
  name = "Vpc_terraform"
}
Subnet_info = [{
  availability_zone = "ap-south-1c"
  cidr_block = "10.0.0.0/24"
  name = "webserver1"},
  {

  availability_zone = "ap-south-1a"
  cidr_block = "10.0.1.0/24" 
  name = "webserver2" },
  {

  availability_zone = "ap-south-1b"
  cidr_block = "10.0.2.0/24"
  name = "app1"},
  {
  availability_zone = "ap-south-1a" 
  cidr_block = "10.0.3.0/24"
  name =  "db" 


},
  {

  availability_zone = "ap-south-1b"
  cidr_block = "10.0.5.0/24"
  name = "db2"},
  {
  availability_zone = "ap-south-1a" 
  cidr_block = "10.0.6.0/24"
  name =  "db1" 


}]