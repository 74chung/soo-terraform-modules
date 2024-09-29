# aws_lb_target_group
#------------------------------------------------------------------
variable "target_type" {
  type = string
}
variable "port" {
  type = string
}
variable "protocol" {
  type = string
}
variable "vpc_id" {
  type = string
}

variable "health_check_protocol" {
  type = string
}

variable "for_each_target_id" {
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
