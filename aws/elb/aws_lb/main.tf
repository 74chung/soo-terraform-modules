# aws_lb
#------------------------------------------------------------------
resource "aws_lb" "company_service_env_function_lb" {
  name                             = "${var.company}-${var.service}-${var.env}-${var.function}lb"
  internal                         = var.internal
  load_balancer_type               = var.load_balancer_type
  security_groups                  = var.security_groups
  subnets                          = var.subnets
  enable_deletion_protection       = var.enable_deletion_protection
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing # For network and gateway type, default=false, For application always true

  access_logs {
    bucket  = var.access_log_bucket # bucket id
    prefix  = "${var.company}-${var.service}-${var.env}-${var.function}lb"
    enabled = var.access_log_enabled # default=false
  }

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
