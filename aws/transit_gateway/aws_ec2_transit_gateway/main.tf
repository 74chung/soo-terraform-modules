# aws_ec2_transit_gateway
#------------------------------------------------------------------
resource "aws_ec2_transit_gateway" "company_service_tgw" {
  description = var.description
  
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation
  
  tags = {
    Name       = "${var.company}-${var.service}-tgw"

    cz-project = var.service
    cz-stage   = var.env
    cz-org     = var.cz_org
    cz-owner   = var.cz_owner
    cz-appl    = var.cz_appl
    cz-ext1    = var.cz_ext1
    cz-ext2    = var.cz_ext2
    cz-ext3    = var.cz_ext3
  }
}
