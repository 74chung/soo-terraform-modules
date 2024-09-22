# aws_backup_vault
#------------------------------------------------------------------
output "backupvault_id" {
  value = aws_backup_vault.company_service_env_backupvault.id
}
output "backupvault_arn" {
  value = aws_backup_vault.company_service_env_backupvault.arn
}
output "backupvault_name" {
  value = aws_backup_vault.company_service_env_backupvault.name
}
