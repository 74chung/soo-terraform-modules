# aws_autoscaling_group
#------------------------------------------------------------------
resource "aws_autoscaling_group" "company_service_env_function_asg" {
  name                = "${var.company}-${var.service}-${var.env}-${var.function}-asg"
  desired_capacity    = var.desired_capacity
  max_size            = var.max_size
  min_size            = var.min_size
  vpc_zone_identifier = var.vpc_zone_identifier

  launch_template {
    id      = var.launch_template_id
    version = var.launch_template_version # $Default, $Latest / default=$Default
  }

  tag {
    key                 = var.service
    value               = "alpha"
    propagate_at_launch = false
  }
  tag {
    key                 = var.env
    value               = "dev"
    propagate_at_launch = false
  }
  tag {
    key                 = var.cz_org
    value               = "soo"
    propagate_at_launch = false
  }
  tag {
    key                 = var.cz_owner
    value               = "soojin"
    propagate_at_launch = false
  }
  tag {
    key                 = var.cz_appl
    value               = "alpha-web"
    propagate_at_launch = false
  }
  tag {
    key                 = var.cz_ext1
    value               = "n/a" # resellonly
    propagate_at_launch = false
  }
  tag {
    key                 = var.cz_ext2
    value               = "skcc/ags" # skcc, skcc/ags
    propagate_at_launch = false
  }
  tag {
    key                 = var.cz_ext3
    value               = "iaas" # iaas, paas, nw
    propagate_at_launch = false
  }
}
