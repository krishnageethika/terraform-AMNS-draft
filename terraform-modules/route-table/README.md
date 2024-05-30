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
| [aws_route.private_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table.private_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags to be applied to the route tables | `map(string)` | `{}` | no |
| <a name="input_create_private_route"></a> [create\_private\_route](#input\_create\_private\_route) | Set to true to create a default route in the private route table, false otherwise | `bool` | `true` | no |
| <a name="input_create_private_route_table"></a> [create\_private\_route\_table](#input\_create\_private\_route\_table) | Set to true to create a private route table, false otherwise | `bool` | `true` | no |
| <a name="input_create_public_route_table"></a> [create\_public\_route\_table](#input\_create\_public\_route\_table) | Set to true to create a public route table, false otherwise | `bool` | `true` | no |
| <a name="input_internet_gateway_id"></a> [internet\_gateway\_id](#input\_internet\_gateway\_id) | ID of the Internet Gateway for public route table | `any` | n/a | yes |
| <a name="input_nat_gateway_id"></a> [nat\_gateway\_id](#input\_nat\_gateway\_id) | ID of the NAT Gateway for private route table | `any` | n/a | yes |
| <a name="input_route_table_name"></a> [route\_table\_name](#input\_route\_table\_name) | Name of the route table | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_route_table_id"></a> [private\_route\_table\_id](#output\_private\_route\_table\_id) | n/a |
| <a name="output_public_route_table_id"></a> [public\_route\_table\_id](#output\_public\_route\_table\_id) | n/a |
<!-- END_TF_DOCS -->