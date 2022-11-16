output "security_group_arn" {
  value = module.ec2-security-group.security_group_arn
}

output "security_group_description" {
  value = module.ec2-security-group.security_group_description
}

output "security_group_vpc_id" {
  value = module.ec2-security-group.security_group_vpc_id
}

output "security_group_id" {
  value = module.ec2-security-group.security_group_id
}