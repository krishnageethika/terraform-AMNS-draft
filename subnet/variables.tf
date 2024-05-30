variable "subnet_configurations" {
  type = map(object({
    vpc_id             =string
    cidr_block         = string
    availability_zone  = string
    name               = string
    // Add any other subnet configuration parameters you need
  }))
}
