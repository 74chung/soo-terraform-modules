# aws_lb_target_group
#------------------------------------------------------------------
output "tg_id" {
  value = aws_lb_target_group.company_service_env_function_tg.id
}
output "tg_arn" {
  value = aws_lb_target_group.company_service_env_function_tg.arn
}
output "tg_name" {
  value = aws_lb_target_group.company_service_env_function_tg.name
}
