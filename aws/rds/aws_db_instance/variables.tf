# aws_db_instance
#------------------------------------------------------------------
variable "instance_class" {
  type = string
}
variable "storage_type" {
  type = string
}
variable "allocated_storage" {
  type = string
}
variable "max_allocated_storage" {
  type = string
}
variable "storage_encrypted" {
  type = string
}

variable "engine" {
  type = string
}
variable "engine_version" {
  type = string
}
variable "auto_minor_version_upgrade" {
  type = string
}

variable "username" {
  type = string
}
variable "password" {
  type = string
}
variable "parameter_group_name" {
  type = string
}

variable "db_subnet_group_name" {
  type = string
}
variable "vpc_security_group_ids" {
  type = list
}
variable "multi_az" {
  type = string
}
variable "skip_final_snapshot" {
  type = string
}
variable "deletion_protection" {
  type = string
}

variable "backup_retention_period" {
  type = string
}
variable "copy_tags_to_snapshot" {
  type = string
}
variable "backup_window" {
  type = string
}

variable "monitoring_interval" {
  type = string
}
variable "monitoring_role_arn" {
  type = string
}
variable "performance_insights_enabled" {
  type = string
}
variable "performance_insights_retention_period" {
  type = string
}
variable "enabled_cloudwatch_logs_exports" {
  type = list
}

variable "company" {
  type = string
}
variable "function" {
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
