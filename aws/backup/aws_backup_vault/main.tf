# aws_backup_vault
#------------------------------------------------------------------
resource "aws_backup_vault" "company_service_env_backupvault" {
  name = "${var.company}-${var.service}-${var.env}-backupvault"
  # kms_key_arn = aws_kms_key.example.arn

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
