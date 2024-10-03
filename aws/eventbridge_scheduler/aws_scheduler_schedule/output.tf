# aws_scheduler_schedule
#------------------------------------------------------------------
output "schedule_id" {
  value = aws_scheduler_schedule.company_service_function_schedule.id
}
output "schedule_arn" {
  value = aws_scheduler_schedule.company_service_function_schedule.arn
}
output "schedule_name" {
  value = aws_scheduler_schedule.company_service_function_schedule.name
}
