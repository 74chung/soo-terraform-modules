# aws_internet_gateway
#------------------------------------------------------------------
resource "aws_internet_gateway" "company_service_env_igw" {
  vpc_id = var.vpc_id

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-igw"

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
