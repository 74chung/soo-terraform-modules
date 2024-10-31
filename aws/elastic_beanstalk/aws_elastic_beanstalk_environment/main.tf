# aws_elastic_beanstalk_environment
#------------------------------------------------------------------
resource "aws_elastic_beanstalk_environment" "company_service_env_function_app_env" {
  name                = "${var.company}-${var.service}-${var.env}-${var.function}-app-env"
  description         = "${var.company}-${var.service}-${var.env}-${var.function}-app-env"
  application         = var.eb_application
  solution_stack_name = var.eb_solution_stack_name
  cname_prefix        = var.eb_cname_prefix
  tier                = var.eb_tier # Worker, WebServer(default)

  ## Service access
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "ServiceRole"
    value     = var.service_role # role ARN
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "EC2KeyName"
    value     = var.ec2_keypair
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = var.ec2_instance_profile # role name
  }

  ## Networking and database
  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = var.eb_env_vpc # vpc id
  }
  setting {
    namespace = "aws:ec2:vpc"
    name      = "AssociatePublicIpAddress"
    value     = var.public_ip_activated
  }
  setting {
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = var.instance_subnets # Subnet List ","
  }

  ## Instance traffic and scaling
  # Instances
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "RootVolumeType"
    value     = var.root_volume_type
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "RootVolumeSize"
    value     = var.root_volume_size # GB
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "RootVolumeIOPS"
    value     = var.root_volume_iops # gp3의 기본 최대 IOPS=16,000
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "RootVolumeThroughput"
    value     = var.root_volume_throughput # 최대 1,000 MB/s
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "DisableIMDSv1"
    value     = var.imdsv1_deactivated # true, false(default)
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "SecurityGroups"
    value     = var.ec2_security_groups # SG id List ","
  }

  # Capacity
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = var.asg_env_type # LoadBalanced(default), SingleInstance
  }
  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = var.asg_min_capacity
  }
  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = var.asg_max_capacity
  }

  setting {
    namespace = "aws:ec2:instances"
    name      = "SpotFleetOnDemandAboveBasePercentage"
    value     = var.ondemand_above_base # On-demand above base(%) 70, 0
  }

  setting {
    namespace = "aws:ec2:instances"
    name      = "InstanceTypes"
    value     = var.instance_types # Instance Type List ","
  }

  setting {
    namespace = "aws:autoscaling:trigger"
    name      = "MeasureName"
    value     = var.trigger_metric # CPUUtilization, NetworkIn, NetworkOut(default), Latency, RequestCount
  }
  setting {
    namespace = "aws:autoscaling:trigger"
    name      = "Statistic"
    value     = var.trigger_statistic # Average(Default), Minimum, Maximum, SampleCount, Sum
  }
  setting {
    namespace = "aws:autoscaling:trigger"
    name      = "Unit"
    value     = var.trigger_unit # Percent, Seconds, Bytes(default)
  }
  setting {
    namespace = "aws:autoscaling:trigger"
    name      = "UpperThreshold"
    value     = var.upper_threshold # NetworkOut default=6000000
  }
  setting {
    namespace = "aws:autoscaling:trigger"
    name      = "UpperBreachScaleIncrement"
    value     = var.scale_up_increment # 임계값 초과 시 인스턴스 1개 증설, default=1
  }
  setting {
    namespace = "aws:autoscaling:trigger"
    name      = "LowerThreshold"
    value     = var.lower_threshold # NetworkOut default=2000000
  }
  setting {
    namespace = "aws:autoscaling:trigger"
    name      = "LowerBreachScaleIncrement"
    value     = var.scale_down_increment # 임계값 초과 시 인스턴스 1개 삭제, default=-1
  }

  # Load balancer network settings
  setting {
    namespace = "aws:ec2:vpc"
    name      = "ELBScheme"
    value     = var.lb_visibility # internet facing(default), internal
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "LoadBalancerType"
    value     = var.lb_type # application, network
  }

  # Listeners
  setting { 
    namespace = "aws:elbv2:listener:default"
    name      = "ListenerEnabled"
    value     = var.default_http_listener_enabled # Default HTTP(80) Listener Enabled : true(default), false
  }

  setting {
    namespace = "aws:elbv2:listener:443"
    name      = "ListenerEnabled"
    value     = var.https_listener_enabled # HTTPS(443) Listener Enabled : true, false(default)
  }
  setting {
    namespace = "aws:elbv2:listener:443"
    name      = "Protocol"
    value     = var.https_listener_protocol # HTTPS
  }
  setting {
    namespace = "aws:elbv2:listener:443"
    name      = "SSLCertificateArns"
    value     = var.certificate_arn # ACM Certificate ARN
  }
  setting {
    namespace = "aws:elbv2:listener:443"
    name      = "SSLPolicy"
    value     = var.ssl_policy
  }

  # Log files access
  setting {
    namespace = "aws:elbv2:loadbalancer"
    name      = "AccessLogsS3Enabled"
    value     = var.lb_store_logs # LB Access log Enabled, true, false(default)
  }
  setting {
    namespace = "aws:elbv2:loadbalancer"
    name      = "AccessLogsS3Bucket"
    value     = var.lb_access_log_bucket
  }
  setting {
    namespace = "aws:elbv2:loadbalancer"
    name      = "AccessLogsS3Prefix"
    value     = var.lb_access_log_bucket_prefix # 로그 파일의 Bucket 경로 설정
  }

  ## Updates, monitoring, and logging
  # Monitoring
  setting {
    namespace = "aws:elasticbeanstalk:healthreporting:system"
    name      = "SystemType"
    value     = var.health_report_system # enhanced(default), basic
  }

  setting { # env-health log streaming to CloudWatch logs
    namespace = "aws:elasticbeanstalk:cloudwatch:logs:health"
    name      = "HealthStreamingEnabled"
    value     = var.health_log_streaming # CloudWatch에 log group(environment-health.log) 생성
  }
  setting {
    namespace = "aws:elasticbeanstalk:cloudwatch:logs:health"
    name      = "RetentionInDays"
    value     = var.health_log_retention # CloudWatch log-group retention, default=7(days)
  }
  setting {
    namespace = "aws:elasticbeanstalk:cloudwatch:logs:health"
    name      = "DeleteOnTerminate"
    value     = var.health_log_lifecycle # LifeCycle : false(Keep logs after terminating environment, default), true(Delete logs upon termination)
  }

  # Managed platform updates
  setting {
    namespace = "aws:elasticbeanstalk:managedactions"
    name      = "ManagedActionsEnabled"
    value     = var.managed_updates # true, false(default)
  }
  setting {
    namespace = "aws:elasticbeanstalk:managedactions"
    name      = "PreferredStartTime"
    value     = var.weekly_update_window # PreferredStartTime Thu:15:30(UTC)
  }
  setting {
    namespace = "aws:elasticbeanstalk:managedactions:platformupdate"
    name      = "UpdateLevel"
    value     = var.managed_update_level # patch, minor(default)
  }

  # Email notifications
  setting {
    namespace = "aws:elasticbeanstalk:sns:topics"
    name      = "Notification Endpoint"
    value     = var.noti_email_address
  }

  # Rolling updates and deployments

  # Platform software
  setting { # S3 log storage
    namespace = "aws:elasticbeanstalk:hostmanager"
    name      = "LogPublicationControl"
    value     = var.s3_log_storage_rotate_logs # elasticbeanstalk S3에 log dir 생성
  }

  setting { # Instance log streaming to CloudWatch logs
    namespace = "aws:elasticbeanstalk:cloudwatch:logs"
    name      = "StreamLogs"
    value     = var.instance_log_streaming # CloudWatch에 log groups(var/log/xxx.log 5개) 생성
  }
  setting {
    namespace = "aws:elasticbeanstalk:cloudwatch:logs"
    name      = "RetentionInDays"
    value     = var.instance_log_retention # CloudWatch log-group retention, default=7(days)
  }
  setting {
    namespace = "aws:elasticbeanstalk:cloudwatch:logs"
    name      = "DeleteOnTerminate"
    value     = var.instance_log_lifecycle # LifeCycle : false(Keep logs after terminating environment, default), true(Delete logs upon termination)
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
