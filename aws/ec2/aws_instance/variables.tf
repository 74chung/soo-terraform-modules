# aws_instance
#------------------------------------------------------------------
variable "key_name" {
  type = string
}
variable "ami" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "associate_public_ip_address" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "vpc_security_group_ids" {
  type = list
}

variable "root_ebs_volume_type" {
  type = string
}
variable "root_ebs_volume_size" {
  type = string
}
variable "root_ebs_encrypted" {
  type = string
}
variable "root_ebs_delete_on_termination" {
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

variable "user_data" {
  type = string
}
