# aws_scheduler_schedule
#------------------------------------------------------------------
resource "aws_scheduler_schedule" "company_service_env_target_function_schedule" {
  name        = "${var.company}-${var.service}-${var.env}-${var.target}-${var.function}-schedule"
  description = "${var.company}-${var.service}-${var.env}-${var.target}-${var.function}-schedule"
  group_name  = var.group_name

  flexible_time_window {
    mode                      = var.flexible_time_window_mode
    maximum_window_in_minutes = var.maximum_window_in_minutes
  }

  schedule_expression          = var.schedule_expression
  schedule_expression_timezone = var.schedule_expression_timezone

  target {
    arn      = var.target_arn
    role_arn = var.target_role_arn
    input = <<EOF
      ${var.target_input}
    EOF

    retry_policy {
      maximum_event_age_in_seconds = var.maximum_event_age_in_seconds
      maximum_retry_attempts       = var.maximum_retry_attempts
    }
  }
}
