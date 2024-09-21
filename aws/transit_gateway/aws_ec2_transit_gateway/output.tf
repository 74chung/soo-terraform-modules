# aws_ec2_transit_gateway
#------------------------------------------------------------------
output "tgw_id" {
  value = aws_ec2_transit_gateway.company_service_tgw.id
}
output "tgw_arn" {
  value = aws_ec2_transit_gateway.company_service_tgw.arn
}
