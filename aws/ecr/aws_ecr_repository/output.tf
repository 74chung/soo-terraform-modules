# aws_ecr_repository
#------------------------------------------------------------------
output "repository_id" {
  value = aws_ecr_repository.company_service_env_function_repo.id
}
output "repository_arn" {
  value = aws_ecr_repository.company_service_env_function_repo.arn
}
output "repository_name" {
  value = aws_ecr_repository.company_service_env_function_repo.name
}
