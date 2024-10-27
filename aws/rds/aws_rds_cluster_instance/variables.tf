# aws_rds_cluster
#------------------------------------------------------------------
variable "engine" {
  type = string
}
variable "engine_version" {
  type = string
}
variable "db_cluster_parameter_group_name" {
  type = string
}
variable "deletion_protection" {
  type = string
}
variable "availability_zones" {
  type = list
}

variable "master_username" {
  type = string
}
variable "master_password" {
  type = string
}

variable "enabled_cloudwatch_logs_exports" {
  type = list
}

variable "db_subnet_group_name" { # cluster-instance에서 공통으로 사용됨
  type = string
}
variable "vpc_security_group_ids" {
  type = list
}

variable "preferred_maintenance_window" {
  type = string
}
variable "backup_retention_period" {
  type = string
}
variable "preferred_backup_window" {
  type = string
}
variable "copy_tags_to_snapshot" {
  type = string
}

variable "port" {
  type = string
}
variable "storage_encrypted" {
  type = string
}
variable "skip_final_snapshot" {
  type = string
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
# aws_rds_cluster_instance
#------------------------------------------------------------------
variable "count" { # Total Instance Count
  type = string
}
variable "instance_class" {
  type = string
}
variable "db_parameter_group_name" {
  type = string
}

variable "performance_insights_enabled" {
  type = string
}
variable "performance_insights_retention_period" {
  type = string
}
variable "monitoring_interval" {
  type = string
}
variable "monitoring_role_arn" {
  type = string
}

variable "auto_minor_version_upgrade" {
  type = string
}
