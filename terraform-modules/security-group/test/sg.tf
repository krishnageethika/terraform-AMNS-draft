module "prod_security_groups" {
  source = "../"

  module_enabled = true
  common_tags = {
    Environment = "Platformion"
    Owner       = "DevOps Team"
  }

  security_groups = {
    sg1 = local.prod_public_rules,
    sg2 = local.pt-prometheus-sg_rules,
    sg3 = local.prod-sg-frontend_rules,
  }
}


module "beta_security_groups" {
  source = "../"

  module_enabled = true
  common_tags = {
    Environment = "Platformion"
    Owner       = "DevOps Team"
  }

  security_groups = {
    sg2 = local.Prod_Public-2_beta_rules,
    # Add more security groups as needed
  }
}






output "my_security_group_ids" {
  value = module.prod_security_groups.security_group_ids
}

