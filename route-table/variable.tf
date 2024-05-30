variable "vpc_id" {
  description = "ID of the VPC"
}

variable "module_enabled" {
  description = "Set to true to create the ELB, false otherwise"
  type        = bool
  default     = true
}

variable "internet_gateway_id" {
  description = "ID of the Internet Gateway for public route table"
  default     = null
}


variable "common_tags" {
  description = "Common tags to be applied to the route tables"
  type        = map(string)
  default     = {}
}

variable "route_cidr_block" {
  description = "private route"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "use_nat_gateway" {
  description = "Flag to enable NAT Gateway routes"
  type        = bool
  default     = false
}

variable "nat_gateway_id" {
  description = "ID of the NAT Gateway for private route table"
  default     = null
}

locals {
  nat_gateway = var.use_nat_gateway ? var.nat_gateway_id : null
}

/*
variable "use_transit_gateway" {
  description = "Flag to enable NAT Gateway routes"
  type        = bool
  default     = false
}

variable "transit_gateway_id" {
  description = "ID of the NAT Gateway for private route table"
  default = null
}
*/

variable "route_table_name" {
  type = string
}