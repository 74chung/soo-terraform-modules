# aws_backup_plan
#------------------------------------------------------------------
resource "aws_backup_plan" "company_service_env_backupplan" {
  name = "${var.company}-${var.service}-${var.env}-backupplan"

  rule {
    rule_name         = "${var.company}-${var.service}-${var.env}-daily-${var.daily_retention}-backuprule"
    target_vault_name = var.target_vault_name
    schedule          = var.daily_schedule # UTC
    start_window      = var.daily_start_window # Minutes
    completion_window = var.daily_completion_window # Minutes
    lifecycle {
      delete_after = var.daily_delete_after # Days
    }
    recovery_point_tags = {
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
  rule {
    rule_name         = "${var.company}-${var.service}-${var.env}-weekly-${var.weekly_retention}-backuprule"
    target_vault_name = var.target_vault_name
    schedule          = var.weekly_schedule # UTC
    start_window      = var.weekly_start_window # Minutes
    completion_window = var.weekly_completion_window # Minutes
    lifecycle {
      delete_after = var.weekly_delete_after # Days
    }
    recovery_point_tags = {
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
