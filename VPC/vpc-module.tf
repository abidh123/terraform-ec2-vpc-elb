module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = var.vpc_name
  cidr = var.CIDR_Block
  azs = var.avaliablity
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
  enable_nat_gateway = var.enable_natgateway
  single_nat_gateway = var.single-natgateway
}

