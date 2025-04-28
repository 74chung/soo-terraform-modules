# aws_ecr_repository
#------------------------------------------------------------------
variable "image_tag_mutability" {
  type = string
}
variable "encryption_type" {
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

# aws_ecr_repository_policy
#------------------------------------------------------------------
variable "repository_policy" {
  type = string
}

