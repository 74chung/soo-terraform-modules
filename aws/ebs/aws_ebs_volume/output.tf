# aws_ebs_volume
#------------------------------------------------------------------
output "ebs_id" {
  value = aws_ebs_volume.company_service_env_function_vol.id
}
output "ebs_arn" {
  value = aws_ebs_volume.company_service_env_function_vol.arn
}
