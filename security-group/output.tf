output "security_group_ids" {
  value = {
    for sg_name, sg_config in aws_security_group.sg :
    sg_name => sg_config.id
  }
}

