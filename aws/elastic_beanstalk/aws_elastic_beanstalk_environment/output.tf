# aws_elastic_beanstalk_environment
#------------------------------------------------------------------
output "eb_env_id" {
  value = aws_elastic_beanstalk_environment.company_service_env_function_app_env.id
}
output "eb_env_arn" {
  value = aws_elastic_beanstalk_environment.company_service_env_function_app_env.arn
}
output "eb_env_name" {
  value = aws_elastic_beanstalk_environment.company_service_env_function_app_env.name
}

output "eb_load_balancers" {
  value = aws_elastic_beanstalk_environment.company_service_env_function_app_env.load_balancers
}
