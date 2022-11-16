module "private-ec2-instance" {
    depends_on = [module.vpc]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.1.4"
  ami = var.ami-name
  instance_type = var.instancetype
  key_name = var.keyname
  vpc_security_group_ids = [module.ec2-private-security-group.security_group_id]
  subnet_id = module.vpc.private_subnets[0]
  tags = {
    "Name" = "ec2-private-instance"
  }
}