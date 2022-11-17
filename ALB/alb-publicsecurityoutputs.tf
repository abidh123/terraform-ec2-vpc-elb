output "alb_public_security_arn" {
  value = module.alb-public-security-group.security_group_arn
}

output "alb_public_security_description" {
  value = module.alb-public-security-group.security_group_description
}

output "alb_public_security_vpc-id" {
  value = module.alb-public-security-group.security_group_vpc_id
}
output "alb_public_security_id" {
  value = module.alb-public-security-group.security_group_id
}