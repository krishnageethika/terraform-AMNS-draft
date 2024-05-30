resource "aws_route_table_association" "main" {
  count          = var.enable_association ? 1 : 0
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}
