variable "availability_zone" {
  type        = string
  description = "An availability zone for the region"
}

variable "public_subnet_id" {
  type        = string
  description = "The public subnet ID in which to place the gateway."
}

variable "common_tags" {
  type = object({
    Environment = string
    Platform    = string
  })
  description = "Default AWS resource's tags"
}
