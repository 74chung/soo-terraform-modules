# aws_lb_target_group
#------------------------------------------------------------------
resource "aws_lb_target_group" "company_service_env_function_tg" {
  name        = "${var.company}-${var.service}-${var.env}-${var.function}-tg"
  target_type = var.target_type
  protocol    = var.protocol
  port        = var.port
  vpc_id      = var.vpc_id

  health_check {
    protocol            = var.health_check_protocol # TCP, HTTP, HTTPS
    port                = var.health_check_port # default=traffic-port
    healthy_threshold   = var.healthy_threshold # default=3
    unhealthy_threshold = var.unhealthy_threshold # default=3
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
# resource "aws_lb_target_group_attachment" "attachment" {
#   target_group_arn = aws_lb_target_group.company_service_env_function_tg.arn
#   port             = var.port
#   for_each  = {
#     for k, v in var.for_each_target_id :
#     k => v
#   }
#   target_id = "${each.value}"
# }
