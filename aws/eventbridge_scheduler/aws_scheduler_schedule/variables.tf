# aws_scheduler_schedule
#------------------------------------------------------------------
variable "group_name" {
  type = string
}

variable "flexible_time_window_mode" {
  type = string
}
variable "maximum_window_in_minutes" {
  type = string
}

variable "schedule_expression" {
  type = string
}
variable "schedule_expression_timezone" {
  type = string
}

variable "target_arn" {
  type = string
}
variable "target_role_arn" {
  type = string
}
variable "target_input" {
  type = string
}

variable "maximum_event_age_in_seconds" {
  type = string
}
variable "maximum_retry_attempts" {
  type = string
}

variable "company" {
  type = string
}
variable "service" {
  type = string
}
variable "function" {
  type = string
}
