# aws_vpc_flow_log
#------------------------------------------------------------------
output "vpc_flowlog_id" {
  value = aws_flow_log.company_service_env_function_flowlog.id
}
output "vpc_flowlog_arn" {
  value = aws_flow_log.company_service_env_function_flowlog.arn
}
