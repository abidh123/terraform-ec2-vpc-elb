
output "vpc_id" {
  value = module.vpc.vpc_id
}


output "vpccidr" {
  value = module.vpc.vpc_cidr_block
}

output "vpcprivatesubnets" {
  value = module.vpc.private_subnets
}

output "vpcpublicsubnets" {
  value = module.vpc.public_subnets
}
