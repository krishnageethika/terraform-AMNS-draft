# security_groups_module/locals.tf

locals {
  prod_public_rules = {
    name        = "prod_public"
    description = "prod_public"
    vpc_id      = "vpc-xxxxxxxxxxxxxxxxx"
    ingress_rules = [
      {
        from_port   = 81
        to_port     = 81
        protocol    = "tcp"
        cidr_blocks = ["10.0.0.0/16"]
      },
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

  pt-prometheus-sg_rules = {
    name        = "pt-prometheus-sg_rules"
    description = "pt-prometheus-sg_rules"
    vpc_id      = "vpc-xxxxxxxxxxxxxxxxx"
    ingress_rules = [
      {
        from_port   = 9090
        to_port     = 9090
        protocol    = "tcp"
        cidr_blocks = ["182.76.226.170/32"]
      },
      {
        from_port   = 9090
        to_port     = 9090
        protocol    = "tcp"
        cidr_blocks = ["13.228.146.170/32"]
      },
      {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["18.141.100.208/32"]
      },
      {
        from_port   = 9093
        to_port     = 9093
        protocol    = "tcp"
        cidr_blocks = ["182.76.226.170/32"]
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

  prod-sg-frontend_rules = {
    name        = "prod_public"
    description = "prod_public"
    vpc_id      = "vpc-xxxxxxxxxxxxxxxxx"
    ingress_rules = [
      {
        from_port   = 81
        to_port     = 81
        protocol    = "tcp"
        cidr_blocks = ["10.0.0.0/16"]
      },
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
