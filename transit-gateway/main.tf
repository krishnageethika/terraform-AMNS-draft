locals {
  component_name = "transit-gateway"
  prefix         = join("-", [var.common_tags.Environment, var.common_tags.Platform])
}


resource "aws_ec2_transit_gateway" "transit_gateway" {
  //count = var.module_enabled ? 1 : 0
  #transit_gateway_name   = var.transit_gateway_name
  description                     = var.transit_gateway_description
 # amazon_side_asn                 = var.amazon_side_asn
  auto_accept_shared_attachments  = var.enable_auto_accept_shared_attachments == true ? "enable" : "disable" # Convert boolean to string
  default_route_table_association = var.default_route_table_association == true ? "enable" : "disable"       # Convert boolean to string
  default_route_table_propagation = var.default_route_table_propagation == true ? "enable" : "disable"       # Convert boolean to string
  vpn_ecmp_support                = var.vpn_ecmp_support == true ? "enable" : "disable"                      # Convert boolean to string
  dns_support                     = var.dns_support == true ? "enable" : "disable"                           # Convert boolean to string

  tags = merge(
    {
      Component = local.component_name
      Name      = join("-", [local.prefix, local.component_name])
    }
  )
}


#resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_attachments" {
#  count              = var.module_enabled ? length(var.transit-vpc) : 0
#  transit_gateway_id = aws_ec2_transit_gateway.transit_gateway.id
#  vpc_id             = var.transit-vpc.vpc_ids
#  subnet_ids         = var.transit-vpc.subnet_ids
#
#  tags = merge(
#    {
#      Name = join("-", [local.prefix, var.transit-vpc.name])
#    }
#  )
#}



