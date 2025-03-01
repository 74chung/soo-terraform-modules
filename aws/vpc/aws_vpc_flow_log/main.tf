# aws_vpc_flow_log
#------------------------------------------------------------------
resource "aws_cloudwatch_log_group" "company_service_env_function_lg" {
  name              = "${var.company}-${var.service}-${var.env}-vpc-flowlog-lg"
  retention_in_days = var.retention_in_days

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
resource "aws_flow_log" "company_service_env_function_flowlog" {
  iam_role_arn             = var.iam_role_arn
  traffic_type             = "ALL"
  log_destination_type     = "cloud-watch-logs"
  log_destination          = aws_cloudwatch_log_group.company_service_env_function_lg.arn
  vpc_id                   = var.vpc_id
  max_aggregation_interval = var.max_aggregation_interval # 60 or 600, default=600

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-vpc-flowlog"
    
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
