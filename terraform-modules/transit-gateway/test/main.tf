module "transit_gateway" {
  source                                = "../" # Adjust the source path accordingly
  module_enabled                        = true
  common_tags                           = { Environment = "Platformion", Team = "DevOps" }
  transit_gateway_name                  = "my-transit-gateway"
  transit_gateway_description           = "My Transit Gateway"
  #amazon_side_asn                       = 64512
  enable_auto_accept_shared_attachments = true
  default_route_table_association       = true
  default_route_table_propagation       = true
  vpn_ecmp_support                      = true
  dns_support                           = true

  vpcs = [
    {
      vpc_id     = "vpc-1"
      subnet_ids = ["subnet-1", "subnet-2"]
      name       = "attachment-1"
    },
    {
      vpc_id     = "vpc-2"
      subnet_ids = ["subnet-3", "subnet-4"]
      name       = "attachment-2"
    },
    # Add more VPC attachments as needed
  ]
}
