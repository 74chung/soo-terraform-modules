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
