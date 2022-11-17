output "loadbalancer_id" {
  value = module.alb.lb_id
}

output "loadbalancer_arn" {
  value = module.alb.lb_arn
}

output "loadbalancer_dns" {
  value = module.alb.lb_dns_name
}

output "target_groups_arn" {
  value = module.alb.target_group_arns
}

output "tg_attachments" {
  value = module.alb.target_group_attachments
}