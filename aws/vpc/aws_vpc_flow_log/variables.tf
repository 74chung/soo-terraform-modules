# aws_vpc_flow_log
#------------------------------------------------------------------
variable "retention_in_days" {
  type = string
}

variable "iam_role_arn" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "max_aggregation_interval" {
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
