# aws_launch_template
#------------------------------------------------------------------
variable "image_id" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "vpc_security_group_ids" {
  type = list
}
variable "disable_api_termination" {
  type = string
}

variable "resource_type" {
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
