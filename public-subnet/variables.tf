variable "availability_zone" {
  type        = string
  description = "An availability zone for the region"
}


/*
variable "internet_gateway_id" {
  type        = string
  description = "Internet Gateway ID"
}
*/
variable "subnet-cidr" {
  type = list(string)
}
variable "subnet-name" {
  type = list(string)
}


variable "vpc_id" {
  type        = string
  description = "ID of VPC to attach this Internet gateway to"
}

variable "common_tags" {
  type = object({
    Environment = string
    Platform    = string
  })
  description = "Default AWS resource's tags"
}


variable "map_public_ip_on_launch" {
  description = "Public IP Launch on Subnet"
  type        = bool
  default     = false
}


variable "public_subnet_cidr" {
  type = list(string)
}