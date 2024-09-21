# aws_db_subnet_group
#------------------------------------------------------------------
output "db_subnet_grp_id" {
  value = aws_db_subnet_group.company_service_env_function_db_subnet_grp.id
}
output "db_subnet_grp_arn" {
  value = aws_db_subnet_group.company_service_env_function_db_subnet_grp.arn
}
output "db_subnet_grp_name" {
  value = aws_db_subnet_group.company_service_env_function_db_subnet_grp.name
}
