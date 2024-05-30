variable "enable_association" {
  description = "Enable or disable the route table association"
  type        = bool
  default     = true
}

variable "subnet_id" {
  description = "ID of the subnet to associate with the route table"
  type        = string
}

variable "route_table_id" {
  description = "ID of the route table"
  type        = string
}

variable "common_tags" {
  description = "Common tags to apply to the resource"
  type        = map(string)
  default     = {}
}