

module "ec2-private-security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.13.1"
  name="private_ec2_sg"
  description="opening ports for ssh,http in this group"
  vpc_id= module.vpcnew.vpc_id
  ingress_cidr_blocks = module.vpcnew.vpccidr
  ingress_rules = [ "ssh-tcp","http-80-tcp" ]
  egress_rules = [ "all-all" ]
  tags = {
    "Name" = "private_ec2_sg"
  }
}

