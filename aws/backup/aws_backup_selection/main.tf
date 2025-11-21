# aws_backup_selection
#------------------------------------------------------------------
resource "aws_backup_selection" "company_service_env_resource_selection" {
  name         = "${var.company}-${var.service}-${var.env}-${var.resource_type}-selection"
  iam_role_arn = var.iam_role_arn
  plan_id      = var.plan_id
  resources    = ["*"]

  condition {
    string_equals {
      key   = "aws:ResourceTag/backup-${var.resource_type}" # resource_type=instance, ebs
      value = "enabled"
    }
    string_equals {
      key   = "aws:ResourceTag/cz-stage"
      value = var.env
    }
    string_equals {
      key   = "aws:ResourceTag/cz-project"
      value = var.service
    }
  }
}
