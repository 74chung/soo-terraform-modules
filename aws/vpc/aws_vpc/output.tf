# aws_vpc
#------------------------------------------------------------------
output "vpc_id" {
  value = aws_vpc.company_service_env_vpc.id
}
output "vpc_arn" {
  value = aws_vpc.company_service_env_vpc.arn
}
