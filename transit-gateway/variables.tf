# aws_transit_gateway_module/main.tf

variable "module_enabled" {
  description = "Flag to enable/disable the module"
  type        = bool
  default     = true
}

variable "common_tags" {
  description = "Common tags for resources"
  type        = map(string)
  default     = {}
}


variable "transit_gateway_description" {
  description = "Description for the AWS Transit Gateway"
  type        = string
}

/*variable "amazon_side_asn" {
  description = "The Autonomous System Number (ASN) for the Amazon side of the AWS Transit Gateway"
  type        = number
}*/

variable "enable_auto_accept_shared_attachments" {
  description = "Enable auto-accept of shared attachments for the AWS Transit Gateway"
  type        = bool
}

variable "default_route_table_association" {
  description = "Enable association of the default route table with VPCs for the AWS Transit Gateway"
  type        = bool
}

variable "default_route_table_propagation" {
  description = "Enable propagation of the default route table to attachments for the AWS Transit Gateway"
  type        = bool
}

variable "vpn_ecmp_support" {
  description = "Enable support for VPN Equal Cost Multipath Protocol (ECMP) for the AWS Transit Gateway"
  type        = bool
}

variable "dns_support" {
  description = "Enable DNS support for the AWS Transit Gateway"
  type        = bool
}

/*variable "vpcs" {
  description = "List of VPCs to attach to the AWS Transit Gateway"
  type = list(object({
    vpc_id     = string
    subnet_ids = list(string)
    name       = string
  }))
}*/
variable "transit-vpc" {
  type = string
}

variable "transit_gateway_name" {
  description = "Name for the AWS Transit Gateway"
  type        = string
}




