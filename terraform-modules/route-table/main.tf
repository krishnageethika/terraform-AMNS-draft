locals {
  component_name = "rt"
  prefix         = join("-", [var.common_tags.Environment, var.common_tags.Platform])
}


resource "aws_route_table" "main" {
//  count  = var.module_enabled ? 1 : 0
  vpc_id = var.vpc_id


  /*
  dynamic "route" {
    for_each = var.route_cidr_block
    content {
      cidr_block     = route.value
      gateway_id     = var.use_nat_gateway ? null : var.internet_gateway_id
      nat_gateway_id = var.use_nat_gateway ? local.nat_gateway : null
      // Checking Tansit Gateway
      #transit_gateway_id = var.use_transit_gateway ? var.transit_gateway_id : null
    }
    

  }
  */
  tags = merge(
    {
      Component = local.component_name
      Name      = join("-", [local.prefix, local.component_name, var.route_table_name])
    }
  )
}