output "private_security_arn" {
  value = module.ec2-private-security-group.security_group_arn
}

output "private_security_description" {
  value = module.ec2-private-security-group.security_group_description
}

output "private_security_vpc-id" {
  value = module.ec2-private-security-group.security_group_vpc_id
}
output "private_security_id" {
  value = module.ec2-private-security-group.security_group_id
}