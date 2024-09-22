# aws_scheduler_schedule_group
#------------------------------------------------------------------
resource "aws_scheduler_schedule_group" "company_service_env_schedule_grp" {
  name = "${var.company}-${var.service}-${var.env}-schedule-grp"

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
