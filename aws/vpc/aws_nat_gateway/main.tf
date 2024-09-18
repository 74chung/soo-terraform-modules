# aws_nat_gateway
#------------------------------------------------------------------
resource "aws_eip" "company_service_env_natgw_eip" {
  count  = length(var.az)
  domain = "vpc"

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-natgw-eip-${replace(var.az[count.index], var.region, "")}"

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
resource "aws_nat_gateway" "company_service_env_natgw" {
  count         = length(var.az)
  allocation_id = aws_eip.company_service_env_natgw_eip[count.index].id
  subnet_id     = var.subnet_id[count.index]
  connectivity_type = "public" # default=public

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-natgw-${replace(var.az[count.index], var.region, "")}"

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
