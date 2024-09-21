# aws_db_instance
#------------------------------------------------------------------
output "db_instance_id" {
  value = aws_db_instance.company_service_env_function_db.id
}
output "db_instance_arn" {
  value = aws_db_instance.company_service_env_function_db.arn
}
