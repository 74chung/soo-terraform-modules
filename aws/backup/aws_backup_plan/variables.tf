# aws_backup_plan
#------------------------------------------------------------------
variable "target_vault_name" {
  type = string
}

variable "daily_retention" {
  type = string
}
variable "daily_schedule" {
  type = string
}
variable "daily_start_window" {
  type = string
}
variable "daily_completion_window" {
  type = string
}
variable "daily_delete_after" {
  type = string
}

variable "weekly_retention" {
  type = string
}
variable "weekly_schedule" {
  type = string
}
variable "weekly_start_window" {
  type = string
}
variable "weekly_completion_window" {
  type = string
}
variable "weekly_delete_after" {
  type = string
}


variable "company" {
  type = string
}

variable "service" {
  type = string
}
variable "env" {
  type = string
}
variable "cz_org" {
  type = string
}
variable "cz_owner" {
  type = string
}
variable "cz_appl" {
  type = string
}
variable "cz_ext1" {
  type = string
}
variable "cz_ext2" {
  type = string
}
variable "cz_ext3" {
  type = string
}
