# aws_launch_template
#------------------------------------------------------------------
resource "aws_launch_template" "company_service_env_function_lt" {
  name                    = "${var.company}-${var.service}-${var.env}-${var.function}-lt"
  image_id                = var.image_id
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids
  disable_api_termination = var.disable_api_termination # default=false

  tag_specifications {
    resource_type = var.resource_type
    tags = {
      Name       = "${var.company}-${var.service}-${var.env}-${var.function}-lt-ec2"

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
    Name       = "${var.company}-${var.service}-${var.env}-${var.function}-lt"

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
