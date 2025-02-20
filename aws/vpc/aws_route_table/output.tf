# aws_route_table
#------------------------------------------------------------------
output "rt_id" {
  value = "${aws_route_table.company_service_env_function_rt.id}"
}
