locals {
  component_name = "rt"
  prefix         = join("-", [var.common_tags.Environment, var.common_tags.Platform])
}

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc-cidr
  tags = {
    Name= var.vpc-name
  }
}
resource "aws_subnet" "subnet" {
  for_each = var.subnet-details
  cidr_block = each.value
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = each.key
  }
}
/*resource "aws_route_table" "main" {
  //count  = var.module_enabled ? 1 : 0
  for_each = var.route-table-details
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    {
      Component = local.component_name
      Name      = join("-", [local.prefix, local.component_name, var.route_table_name])
    }
  )
}*/

/*resource "aws_internet_gateway" "amns_internet_gateway" {
  count = var.create_internet_gateway ? 1 : 0
  vpc_id = aws_vpc.vpc.id
}

resource "aws_nat_gateway" "example" {
  for_each = aws_subnet.subnet

  connectivity_type = "private"
  subnet_id = instance== "desired_subnet" ? aws_subnet.desired.id : null

}*/
output "vpc_ids" {
  value = aws_vpc.vpc[*].id
}
output "subnet_ids" {
  value = [for subnet in aws_subnet.subnet : subnet.id]
}