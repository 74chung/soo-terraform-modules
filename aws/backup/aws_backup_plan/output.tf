# aws_backup_plan
#------------------------------------------------------------------
output "backupplan_id" {
  value = aws_backup_plan.company_service_env_backupplan.id
}
output "backupplan_arn" {
  value = aws_backup_plan.company_service_env_backupplan.arn
}
output "backupplan_name" {
  value = aws_backup_plan.company_service_env_backupplan.name
}
