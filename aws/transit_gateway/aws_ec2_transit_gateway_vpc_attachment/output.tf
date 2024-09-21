# aws_ec2_transit_gateway_vpc_attachment
#------------------------------------------------------------------
output "tgw_attachment_id" {
  value = aws_ec2_transit_gateway_vpc_attachment.company_service_env_tgw_attachment.id
}
