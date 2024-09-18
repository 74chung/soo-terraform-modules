# aws_internet_gateway
#------------------------------------------------------------------
output "igw_id" {
  value = aws_internet_gateway.company_service_env_igw.id
}
output "igw_arn" {
  value = aws_internet_gateway.company_service_env_igw.arn
}
