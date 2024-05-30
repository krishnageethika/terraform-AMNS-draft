module "prod-ac-wl" {
  source = "../../../terraform-modules-back/vpc"
  for_each = var.vpc-config
  vpc-name = each.key
  vpc-cidr = each.value.vpc-cidr
  subnet-details = each.value.subnet-details
//  route-table-details = each.value.route-table-details
//  create_internet_gateway = var.create_internet_gateway
//  create_nat_gateway = var.create_nat_gateway
 // route_table_name = "AMNS-RT"
}
/*
module "amns_rt" {
  source = "../../../terraform-modules-back/route-table"
  route_table_name = "private RT"
  vpc_id = module.prod-ac-wl.vpc_ids
  common_tags = {
    Environment = "Dev"
    Platform = "linux"
  }
}
*/

/*
module "public_route_table" {
  source              = "../"
  vpc_id              = module.prod-ac-wl.vpc_ids.value
  route_table_name    = "test route table"
  internet_gateway_id = module
  route_cidr_block    = var.public_route_table_cidr_block
  use_nat_gateway     = false
  common_tags         = local.common_tags
}*/


/*variable "public_subnet_id" {
  type        = string
  description = "The public subnet ID in which to place the gateway."
}*/
/*variable "create_nat_gateway" {
  type = bool
  default = ""
}*/

/*module amns-nat-gateway  {
  source = "../../../terraform-modules-back/nat-gateway"
  //count = var.create_nat_gateway ? 1:0

  availability_zone = "eu-west-2"
  common_tags       = {
    Environment = "Dev"
    Platform = "Linux"
  }
  public_subnet_id  = "subnet-0f9ab6539bb5a1f65"
}

*/

module "amns-igw" {
  source = "../../../terraform-modules-back/internet-gateway"
  common_tags = {
    Environment="Dev"
    Platform = "Linux"
  }
  vpc_id = var.igf_vpc_id
}