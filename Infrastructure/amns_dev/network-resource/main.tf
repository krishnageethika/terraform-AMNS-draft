
/*resource "aws_vpc" "ams_vpc" {
  cidr_block = "10.165.48.0/22"


}
resource "aws_subnet" "amns_subnet" {
  vpc_id = aws_vpc.ams_vpc.id
  cidr_block = "10.165.48.0/28"
}*/

module "amns-vpc" {
  source = "../../../terraform-modules-back/vpc"
  vpc-cidr = ""
  subnet-details = ""
  vpc-name = ""
}
module "amns-igw" {
  source = "../../../terraform-modules-back/internet-gateway"
  common_tags = {
    Environment="Dev"
    Platform = "Linux"
  }
  vpc_id = aws_vpc.ams_vpc.id
}

module "ans-natgatw" {
  source = "../../../terraform-modules-back/nat-gateway"
  availability_zone = ""
  common_tags = {
    Environment = "Dev"
    Platform = "Linux"
  }
  public_subnet_id = aws_subnet.amns_subnet.id
}


module "amns_vpc_routing_table" {
  source              = "../../../terraform-modules-back/route-table"
  vpc_id = aws_vpc.ams_vpc.id
  route_table_name = "test-table"
  common_tags = {
    Environment = "Dev"
    Platform = "Linux"
  }
}

module "amns_transit_gtw" {
  source = "../../../terraform-modules-back/transit-gateway"
  default_route_table_association = false
  default_route_table_propagation = false
  dns_support = false
  enable_auto_accept_shared_attachments = false
  transit_gateway_description = ""
  transit_gateway_name = "amns-transit-gtw"
  transit-vpc = aws_vpc.ams_vpc.id
  vpn_ecmp_support = false
  common_tags = {
    Environment = "Dev"
    Platform = "Linux"
  }
}