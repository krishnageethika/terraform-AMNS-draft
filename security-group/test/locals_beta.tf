# security_groups_module/locals.tf

locals {
  Prod_Public-1_beta_rules = {
    name        = "web_sg"
    description = "Web Security Group"
    vpc_id      = "vpc-xxxxxxxxxxxxxxxxx"
    ingress_rules = [
      {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      },
      {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
    egress_rules = [
      {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
  }

  Prod_Public-2_beta_rules = {
    name        = "db_sg"
    description = "Database Security Group"
    vpc_id      = "vpc-xxxxxxxxxxxxxxxxx"
    ingress_rules = [
      {
        from_port   = 3306
        to_port     = 3306
        protocol    = "tcp"
        cidr_blocks = ["10.0.0.0/16"]
      }
    ]
    egress_rules = [
      {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
  }
}
