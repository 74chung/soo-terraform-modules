# aws_instance
#------------------------------------------------------------------
resource "aws_instance" "company_service_env_function_ec2" {
  key_name                    = var.key_name
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids

  root_block_device {
    volume_type           = var.root_ebs_volume_type
    volume_size           = var.root_ebs_volume_size
    encrypted             = var.root_ebs_encrypted
    delete_on_termination = var.root_ebs_delete_on_termination
  }

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-${var.function}${var.number}-ec2"
  
    cz-project = var.service
    cz-stage   = var.env
    cz-org     = var.cz_org
    cz-owner   = var.cz_owner
    cz-appl    = var.cz_appl
    cz-ext1    = var.cz_ext1
    cz-ext2    = var.cz_ext2
    cz-ext3    = var.cz_ext3
  }

  user_data = var.user_data
}
