# aws_nat_gateway
#------------------------------------------------------------------
variable "az" {
  type = list
}
variable "subnet_id" {
  type = list
}

variable "company" {
  type = string
}
variable "region" {
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
