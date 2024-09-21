# aws_ec2_transit_gateway_vpc_attachment
#------------------------------------------------------------------
variable "transit_gateway_id" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "subnet_ids" {
  type = list
}
variable "transit_gateway_default_route_table_association" {
  type = string
}
variable "transit_gateway_default_route_table_propagation" {
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
