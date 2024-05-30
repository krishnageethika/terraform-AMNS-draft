resource "aws_subnet" "main" {
  count = length(var.public_subnet_cidr)
  cidr_block = element(var.public_subnet_cidr,count.index)
  map_public_ip_on_launch = var.map_public_ip_on_launch
  vpc_id                  = var.vpc_id
  tags = {
    Name = var.subnet-name[count.index]
  }


}

