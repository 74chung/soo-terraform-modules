# aws_elastic_beanstalk_application
#------------------------------------------------------------------
output "eb_app_id" {
  value = aws_elastic_beanstalk_application.company_service_env_function_app.id
}
output "eb_app_arn" {
  value = aws_elastic_beanstalk_application.company_service_env_function_app.arn
}
output "eb_app_name" {
  value = aws_elastic_beanstalk_application.company_service_env_function_app.name
}
