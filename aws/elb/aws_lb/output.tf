# aws_lb
#------------------------------------------------------------------
output "lb_id" {
  value = aws_lb.company_service_env_function_lb.id
}
output "lb_arn" {
  value = aws_lb.company_service_env_function_lb.arn
}
output "lb_name" {
  value = aws_lb.company_service_env_function_lb.name
}
