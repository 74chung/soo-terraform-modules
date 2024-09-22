# aws_backup_selection
#------------------------------------------------------------------
output "selection_id" {
  value = aws_backup_selection.company_service_env_resource_selection.id
}
output "selection_name" {
  value = aws_backup_selection.company_service_env_resource_selection.name
}
