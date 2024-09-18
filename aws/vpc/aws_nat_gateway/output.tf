# aws_nat_gateway
#------------------------------------------------------------------
output "natgw_id" {
  value = "${aws_nat_gateway.company_service_env_natgw.*.id}"
}
