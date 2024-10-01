# aws_autoscaling_group
#------------------------------------------------------------------
output "asg_id" {
  value = aws_autoscaling_group.company_service_env_function_asg.id
}
output "asg_arn" {
  value = aws_autoscaling_group.company_service_env_function_asg.arn
}
output "asg_name" {
  value = aws_autoscaling_group.company_service_env_function_asg.name
}
