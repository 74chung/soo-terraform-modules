# aws_db_instance
#------------------------------------------------------------------
resource "aws_db_instance" "company_service_env_function_db" {
  identifier            = "${var.company}-${var.service}-${var.env}-${var.function}"
  instance_class        = var.instance_class
  storage_type          = var.storage_type
  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  storage_encrypted     = var.storage_encrypted
  # db_name              = "database03786"
  engine                     = var.engine
  engine_version             = var.engine_version
  auto_minor_version_upgrade = var.auto_minor_version_upgrade

  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name

  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  multi_az               = var.multi_az
  skip_final_snapshot    = var.skip_final_snapshot
  deletion_protection    = var.deletion_protection

  backup_retention_period = var.backup_retention_period
  copy_tags_to_snapshot   = var.copy_tags_to_snapshot
  backup_window           = var.backup_window

  monitoring_interval                   = var.monitoring_interval
  monitoring_role_arn                   = var.monitoring_role_arn
  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_retention_period = var.performance_insights_retention_period
  enabled_cloudwatch_logs_exports       = var.enabled_cloudwatch_logs_exports

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

  # timeouts {
  #   create = "3h"
  #   delete = "3h"
  #   update = "3h"
  # }
}
