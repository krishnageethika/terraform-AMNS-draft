
vpc-config = {
  C1C97-C2-200-APS1-PD-VPC-01 = {
    vpc-cidr       = "10.165.48.0/22",
    subnet-details = {
      C1C97-C2-200-TGW-APS1A-PVT = "10.165.48.0/28"
      C1C97-C2-200-TGW-APS1B-PVT = "10.165.48.16/28"
    }
  }



  C1C97-C2-100-APS1-VPC-01 = {
    vpc-cidr       = "10.165.52.0/22",
    subnet-details = {
      C1C97-C2-100-TGW-APS1A-PVT     = "10.165.52.0/28"
      C1C97-C2-100-TGW-APS1B-PVT     = "10.165.52.16/28"
      C1C97-C2-200-BASTION-APS1A-PVT = "10.165.52.32/27"
      C1C97-C2-200-WEB-APS1A-PVT     = "10.165.52.128/25"
      C1C97-C2-200-WEB-APS1B-PVT     = "10.165.53.0/25"
      C1C97-C2-200-APP-APS1A-PVT     = "10.165.54.0/24"
      C1C97-C2-200-DB-APS1A-PVT      = "10.165.53.128/25"

    }
  }
  C1C97-C2-200-SS-APS1-VPC-01 = {
    vpc-cidr       = "10.165.56.0/24",
    subnet-details = {
      C1C97-C2-200-SS-TGW-APS1A-PVT   = "10.165.56.0/28"
      C1C97-C2-200-SS-TGW-APS1B-PVT   = "10.165.56.16/28"
      C1C97-C2-200-SS-COMMN-APS1A-PVT = "10.165.56.128/25"

    }
  }
}

    //public_subnet_id = "vpc-076e42974b2dd7e1b"


  //}

igf_vpc_id = "vpc-0f5ac6db5a0b43bcb"