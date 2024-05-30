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

variable "security_groups" {
  description = "Map of security groups"
  #type        = map(map(any))
  default = {}
}
