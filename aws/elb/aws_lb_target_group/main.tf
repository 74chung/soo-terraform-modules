# aws_lb_target_group
#------------------------------------------------------------------
resource "aws_lb_target_group" "company_service_env_function_tg" {
  name        = "${var.company}-${var.service}-${var.env}-${var.function}-tg"
  target_type = var.target_type
  port        = var.port
  protocol    = var.protocol
  vpc_id      = var.vpc_id

  health_check {
    port     = var.port
    protocol = var.health_check_port
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
resource "aws_lb_target_group_attachment" "attachment" {
  # for_each = {
  #   for k, v in module.common_prd_pub_a_ec2.*.ec2_id :
  #   # for k, v in module.common_prd_pub_a_ec2 :
  #   k => v
  # }
  # for_each = toset([ => 이건 되긴함!
  #   module.ec2_common_prd[0].id,
  #   module.ec2_common_prd[1].id,
  #   module.ec2_common_prd[2].id,
  # ])
  # for_each = toset([module.ec2_common_prd.*.id]) => 이건 안됨!

  target_group_arn = aws_lb_target_group.company_service_env_function_tg.arn
  # target_group_arn = module.common_prd_pub_a_tg.tg_arn
  target_id        = var.target_id
  port             = var.port
}
