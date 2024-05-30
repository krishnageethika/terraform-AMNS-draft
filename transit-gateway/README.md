<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway.transit_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway) | resource |
| [aws_ec2_transit_gateway_vpc_attachment.vpc_attachments](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_vpc_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amazon_side_asn"></a> [amazon\_side\_asn](#input\_amazon\_side\_asn) | The Autonomous System Number (ASN) for the Amazon side of the AWS Transit Gateway | `number` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags for resources | `map(string)` | `{}` | no |
| <a name="input_default_route_table_association"></a> [default\_route\_table\_association](#input\_default\_route\_table\_association) | Enable association of the default route table with VPCs for the AWS Transit Gateway | `bool` | n/a | yes |
| <a name="input_default_route_table_propagation"></a> [default\_route\_table\_propagation](#input\_default\_route\_table\_propagation) | Enable propagation of the default route table to attachments for the AWS Transit Gateway | `bool` | n/a | yes |
| <a name="input_dns_support"></a> [dns\_support](#input\_dns\_support) | Enable DNS support for the AWS Transit Gateway | `bool` | n/a | yes |
| <a name="input_enable_auto_accept_shared_attachments"></a> [enable\_auto\_accept\_shared\_attachments](#input\_enable\_auto\_accept\_shared\_attachments) | Enable auto-accept of shared attachments for the AWS Transit Gateway | `bool` | n/a | yes |
| <a name="input_module_enabled"></a> [module\_enabled](#input\_module\_enabled) | Flag to enable/disable the module | `bool` | `true` | no |
| <a name="input_transit_gateway_description"></a> [transit\_gateway\_description](#input\_transit\_gateway\_description) | Description for the AWS Transit Gateway | `string` | n/a | yes |
| <a name="input_transit_gateway_name"></a> [transit\_gateway\_name](#input\_transit\_gateway\_name) | Name for the AWS Transit Gateway | `string` | n/a | yes |
| <a name="input_vpcs"></a> [vpcs](#input\_vpcs) | List of VPCs to attach to the AWS Transit Gateway | <pre>list(object({<br>    vpc_id     = string<br>    subnet_ids = list(string)<br>    name       = string<br>  }))</pre> | n/a | yes |
| <a name="input_vpn_ecmp_support"></a> [vpn\_ecmp\_support](#input\_vpn\_ecmp\_support) | Enable support for VPN Equal Cost Multipath Protocol (ECMP) for the AWS Transit Gateway | `bool` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_transit_gateway_id"></a> [transit\_gateway\_id](#output\_transit\_gateway\_id) | n/a |
<!-- END_TF_DOCS -->