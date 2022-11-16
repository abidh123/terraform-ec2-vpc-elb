module "ec2-security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.13.1"
  name="public_ec2_sg"
  description="opening ports for ssh in this group"
  vpc_id= module.vpc.vpc_id
  ingress_cidr_blocks = [ "0.0.0.0/0" ]
  ingress_rules = [ "ssh-tcp"]
  egress_rules = [ "all-all" ]
  tags = {
    "Name" = "public_ec2_sg"
  }
}