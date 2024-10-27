# aws_rds_cluster
#------------------------------------------------------------------
resource "aws_rds_cluster" "company1_alpha_dev_main_aurorapostgres_cluster" {
  cluster_identifier              = "${var.company}-${var.service}-${var.env}-${var.function}-cluster"
  engine                          = var.engine # aurora engine
  engine_version                  = var.engine_version
  db_cluster_parameter_group_name = var.db_cluster_parameter_group_name
  deletion_protection             = var.deletion_protection # true, false(default) -> 배포 완료 후 Disabled->Enabled 변경 필요
  availability_zones              = var.availability_zones

  master_username = var.master_username
  master_password = var.master_password # APP(DBA)측으로 부터 PW 사전에 공유 받고 배포

  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports # audit, error, general, slowquery, postgresql(PostgreSQL)

  db_subnet_group_name   = var.db_subnet_group_name # cluster-instance에서 공통으로 사용됨
  vpc_security_group_ids = var.vpc_security_group_ids # SG Rule은 TF 배포 후 AWS콘솔에서 설정

  preferred_maintenance_window = var.preferred_maintenance_window # UTC, Cluster-inscance의 MA window는 TF 배포 후 AWS콘솔에서 수정
  backup_retention_period      = var.backup_retention_period
  preferred_backup_window      = var.preferred_backup_window # UTC
  copy_tags_to_snapshot        = var.copy_tags_to_snapshot # true, false(default)

  port                = var.port
  storage_encrypted   = var.storage_encrypted
  skip_final_snapshot = var.skip_final_snapshot # true, false(default)

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
# aws_rds_cluster_instance
#------------------------------------------------------------------
resource "aws_rds_cluster_instance" "company1_alpha_dev_main_aurorapostgres_instance" {
  cluster_identifier = aws_rds_cluster.company1_alpha_dev_main_aurorapostgres_cluster.id
  engine             = aws_rds_cluster.company1_alpha_dev_main_aurorapostgres_cluster.engine
  engine_version     = aws_rds_cluster.company1_alpha_dev_main_aurorapostgres_cluster.engine_version

  count                   = var.count # Total Instance Count
  identifier              = "${var.company}-${var.service}-${var.env}-${var.function}-${count.index}" # 배포 후 identifier 정리
  instance_class          = var.instance_class
  db_parameter_group_name = var.db_parameter_group_name

  db_subnet_group_name = var.db_subnet_group_name

  performance_insights_enabled          = var.performance_insights_enabled # true, false(default)
  performance_insights_retention_period = var.performance_insights_retention_period # 7(default), 731(2 years) or a multiple of 31
  monitoring_interval                   = var.monitoring_interval # 0(default), 1, 5, 10, 15, 30, 60, Granularity(seconds) -> Monitoring Status가 Turned on 됨
  monitoring_role_arn                   = var.monitoring_role_arn

  auto_minor_version_upgrade = var.auto_minor_version_upgrade # true(default), false
  # copy_tags_to_snapshot      = false # true, false(default), copy_tags_to_snapshot 설정은 Cluster에서 설정

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
