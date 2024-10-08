# aws_security_group
#------------------------------------------------------------------
resource "aws_security_group" "company_service_env_function_sg" {
  name        = "${var.company}-${var.service}-${var.env}-${var.function}-sg"
  description = var.description
  vpc_id      = var.vpc_id

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-${var.function}-sg"

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
