# aws_launch_template
#------------------------------------------------------------------
output "lt_id" {
  value = aws_launch_template.company_service_env_function_lt.id
}
output "lt_arn" {
  value = aws_launch_template.company_service_env_function_lt.arn
}
output "lt_name" {
  value = aws_launch_template.company_service_env_function_lt.name
}
