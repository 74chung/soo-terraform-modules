# aws_lb
#------------------------------------------------------------------
variable "internal" {
  type = string
}
variable "load_balancer_type" {
  type = string
}
variable "security_groups" {
  type = list
}
variable "subnets" {
  type = list
}
variable "enable_deletion_protection" {
  type = string
}
variable "enable_cross_zone_load_balancing" {
  type = string
}

variable "access_log_bucket" {
  type = string
}
variable "access_log_prefix" {
  type = string
}
variable "access_log_enabled" {
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
