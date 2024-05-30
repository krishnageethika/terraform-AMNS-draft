module "prod-ac-wl" {
  source = "../../../terraform-modules-back/vpc"
  for_each = var.vpc-config
  vpc-name = each.key
  vpc-cidr = each.value.vpc-cidr
  subnet-details = each.value.subnet-details
}