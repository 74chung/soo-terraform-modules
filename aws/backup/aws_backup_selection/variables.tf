# aws_backup_selection
#------------------------------------------------------------------
variable "iam_role_arn" {
  type = string
}
variable "plan_id" {
  type = string
}

variable "company" {
  type = string
}
variable "resource_type" {
  type = string
}

variable "service" {
  type = string
}
variable "env" {
  type = string
}
