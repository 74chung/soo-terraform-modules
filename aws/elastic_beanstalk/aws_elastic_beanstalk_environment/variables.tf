# aws_elastic_beanstalk_environment
#------------------------------------------------------------------
variable "eb_application" {
  type = string
}
variable "eb_solution_stack_name" {
  type = string
}
variable "eb_cname_prefix" {
  type = string
}
variable "eb_tier" {
  type = string
}

## Service access
variable "service_role" {
  type = string
}
variable "ec2_keypair" {
  type = string
}
variable "ec2_instance_profile" {
  type = string
}

## Networking and database
variable "eb_env_vpc" {
  type = string
}
variable "public_ip_activated" {
  type = string
}
variable "instance_subnets" { # Subnet List ","
  type = string
}

## Instance traffic and scaling
# Instances
variable "root_volume_type" {
  type = string
}
variable "root_volume_size" {
  type = string
}
variable "root_volume_iops" {
  type = string
}
variable "root_volume_throughput" {
  type = string
}

variable "imdsv1_deactivated" {
  type = string
}

variable "ec2_security_groups" { # SG List ","
  type = string
}

# Capacity
variable "asg_env_type" {
  type = string
}
variable "asg_min_capacity" {
  type = string
}
variable "asg_max_capacity" {
  type = string
}

variable "ondemand_above_base" {
  type = string
}

variable "instance_types" { # Instance type List ","
  type = string
}

variable "trigger_metric" {
  type = string
}
variable "trigger_statistic" {
  type = string
}
variable "trigger_unit" {
  type = string
}
variable "upper_threshold" {
  type = string
}
variable "scale_up_increment" {
  type = string
}
variable "lower_threshold" {
  type = string
}
variable "scale_down_increment" {
  type = string
}

# Load balancer network settings
variable "lb_visibility" {
  type = string
}
variable "lb_type" {
  type = string
}

# Listeners
variable "default_http_listener_enabled" {
  type = string
}

variable "https_listener_enabled" {
  type = string
}
variable "https_listener_protocol" {
  type = string
}
variable "certificate_arn" {
  type = string
}
variable "ssl_policy" {
  type = string
}

# Log files access
variable "lb_store_logs" {
  type = string
}
variable "lb_access_log_bucket" {
  type = string
}
variable "lb_access_log_bucket_prefix" {
  type = string
}

## Updates, monitoring, and logging
# Monitoring
variable "health_report_system" {
  type = string
}

variable "health_log_streaming" {
  type = string
}
variable "health_log_retention" {
  type = string
}
variable "health_log_lifecycle" {
  type = string
}

# Managed platform updates
variable "managed_updates" {
  type = string
}
variable "weekly_update_window" {
  type = string
}
variable "managed_update_level" {
  type = string
}

# Email notifications
variable "noti_email_address" {
  type = string
}

# Rolling updates and deployments

# Platform software
variable "s3_log_storage_rotate_logs" {
  type = string
}

variable "instance_log_streaming" {
  type = string
}
variable "instance_log_retention" {
  type = string
}
variable "instance_log_lifecycle" {
  type = string
}


variable "company" {
  type = string
}
variable "function" {
  type = string
}

variable "service" {
  type = string
}
variable "env" {
  type = string
}
variable "cz_org" {
  type = string
}
variable "cz_owner" {
  type = string
}
variable "cz_appl" {
  type = string
}
variable "cz_ext1" {
  type = string
}
variable "cz_ext2" {
  type = string
}
variable "cz_ext3" {
  type = string
}
