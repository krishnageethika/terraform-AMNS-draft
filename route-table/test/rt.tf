module "public_route_table" {
  source              = "../"
  vpc_id              = module.proptiger_vpc.id
  route_table_name    = "proptiger_public_route_table"
  internet_gateway_id = module.proptiger_igw.id
  route_cidr_block    = var.public_route_table_cidr_block
  use_nat_gateway     = false
  common_tags         = local.common_tags
}

module "private_route_table" {
  source           = "../"
  vpc_id           = module.proptiger_vpc.id
  route_table_name = "proptiger_private_route_table"
  #internet_gateway_id           = module.proptiger_igw.id
  route_cidr_block = var.private_route_table_cidr_block
  use_nat_gateway  = true
  common_tags      = local.common_tags
  nat_gateway_id   = module.nat_gateway.id
}

output "public_route_table_id" {
  value = module.public_route_table.id
}


