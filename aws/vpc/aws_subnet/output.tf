# aws_subnet
#------------------------------------------------------------------
output "subnet_id" {
  value = "${aws_subnet.company_service_env_function_subnet.*.id}"
}
output "subnet_arn" {
  value = "${aws_subnet.company_service_env_function_subnet.*.arn}"
}
