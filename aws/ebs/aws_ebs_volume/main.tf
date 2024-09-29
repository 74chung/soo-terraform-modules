# aws_ebs_volume
#------------------------------------------------------------------
resource "aws_ebs_volume" "company_service_env_function_vol" {
  availability_zone = var.availability_zone
  type              = var.type
  size              = var.size
  encrypted         = var.encrypted

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-${var.function}"
  
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
