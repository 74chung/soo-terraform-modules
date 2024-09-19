# aws_instance
#------------------------------------------------------------------
output "ec2_id" {
  value = aws_instance.company_service_env_function_ec2.id
}
output "ec2_arn" {
  value = aws_instance.company_service_env_function_ec2.arn
}
