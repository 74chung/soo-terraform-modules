# aws_db_subnet_group
#------------------------------------------------------------------
resource "aws_db_subnet_group" "company_service_env_function_db_subnet_grp" {
  name       = "${var.company}-${var.service}-${var.env}-${var.function}-db-subnet-grp"
  subnet_ids = var.subnet_ids

  tags = {
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
