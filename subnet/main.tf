/*
variable "vpc_ids" {
  description = "List of VPC IDs where the subnets will be created"
  type        = list(string)
}
resource "aws_subnet" "subnet" {
  for_each = toset(var.vpc_ids)  # Convert the list of VPC IDs to a set

  vpc_id            = each.value  # Use the current VPC ID
  cidr_block        = each.key.cidr_block
  availability_zone = each.key.availability_zone
  tags = {
    Name = each.key.name
  }
}

output "subnet_ids" {
  value = values(aws_subnet.subnet)[*].id
}
*/
variable "vpc_id" {
  description = "ID of the VPC"
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for the subnets"
}

variable "availability_zones" {
  description = "List of availability zones for the subnets"
}

provider "aws" {
  region = "your_region"
}

variable "vpc_name" {
  type = string
}
resource "aws_subnet" "main" {
  count            = length(var.subnet_cidr_blocks)
  vpc_id           = var.vpc_id
  cidr_block       = var.subnet_cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]
  map_public_ip_on_launch = true
  }
output "subnet-id" {
  value = aws_subnet.main.id
}