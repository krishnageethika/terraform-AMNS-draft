#/*
#
#
#variable "vpc_configurations" {
#  type = map(object({
#    name        = string
#    cidr_block  = string
#    subnet= map(object({
#      vpc_id = string
#      subnet_cidr_block = list(string)
#      subnet_configuration = map(object({
#    subnet_name         = string
#      cidr_block          = string
#
#  }))
#      }))
#    // Add other VPC configuration attributes as needed
#  }))
#}*//*
#*//*
#variable "subnet_configuration" {
#
#  type = map(object({
#    subnet_name         = string
#      cidr_block          = string
#
#  }))
#}*//*
#
#variable "vpc_configurations" {
#  type = map(string)
#  cidr_block = string
#  name = string
#}*/


variable "vpc-name" { type = string }
variable "vpc-cidr" {
  type = string
}
variable "subnet-details" {}

/*variable "nat_subnet_gateway" {
  type    = string
}
variable "create_nat_gateway" {
  type    = bool
  default = "false"
}*/
/*variable "route-table-details" {}*/

variable "common_tags" {
  description = "Common tags to be applied to the route tables"
  type        = map(string)
  default     = {
    Environment = "Dev"
    Platform = "Linux"
  }
}
/*
variable "route_table_name" {
  description = "Name of the route table"
}*/
