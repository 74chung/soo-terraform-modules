# aws_ec2_transit_gateway_route_table
#------------------------------------------------------------------
output "tgw_rt_id" {
  value = aws_ec2_transit_gateway_route_table.company_service_env_tgw_rt.id
}
output "tgw_rt_arn" {
  value = aws_ec2_transit_gateway_route_table.company_service_env_tgw_rt.arn
}
