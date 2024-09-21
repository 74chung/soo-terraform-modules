# aws_ec2_transit_gateway_vpc_attachment
#------------------------------------------------------------------
resource "aws_ec2_transit_gateway_vpc_attachment" "company_service_env_tgw_attachment" {
  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids
  transit_gateway_default_route_table_association = var.transit_gateway_default_route_table_association
  transit_gateway_default_route_table_propagation = var.transit_gateway_default_route_table_propagation
  
  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-tgw-attachment"

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
