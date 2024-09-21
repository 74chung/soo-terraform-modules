# aws_ec2_transit_gateway_route_table
#------------------------------------------------------------------
resource "aws_ec2_transit_gateway_route_table" "company_service_env_tgw_rt" {
  transit_gateway_id = var.transit_gateway_id

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-tgw-rt"

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