# aws_scheduler_schedule_group
#------------------------------------------------------------------
output "schedule_grp_id" {
  value = aws_scheduler_schedule_group.company_service_function_schedule_grp.id
}
output "schedule_grp_arn" {
  value = aws_scheduler_schedule_group.company_service_function_schedule_grp.arn
}
output "schedule_grp_name" {
  value = aws_scheduler_schedule_group.company_service_function_schedule_grp.name
}
