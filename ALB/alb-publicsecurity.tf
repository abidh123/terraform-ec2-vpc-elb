module "alb-public-security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.13.1"
  name="alb_sg"
  description="opening ports for http and https in this group"
  vpc_id= module.vpc.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules = ["http-80-tcp","https-443-tcp" ]
  egress_rules = [ "all-all" ]
  tags = {
    "Name" = "alb_sg"
  }
}