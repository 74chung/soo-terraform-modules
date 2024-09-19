# aws_security_group
#------------------------------------------------------------------
output "sg_id" {
  value = aws_security_group.company_service_env_function_sg.id
}
output "sg_arn" {
  value = aws_security_group.company_service_env_function_sg.arn
}
output "sg_name" {
  value = aws_security_group.company_service_env_function_sg.name
}
