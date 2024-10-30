# aws_elastic_beanstalk_application
#------------------------------------------------------------------
resource "aws_elastic_beanstalk_application" "company_service_env_function_app" {
  name        = "${var.company}-${var.service}-${var.env}-${var.function}-app"
  description = "${var.company}-${var.service}-${var.env}-${var.function}-app"

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
