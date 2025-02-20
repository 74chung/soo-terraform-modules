# aws_subnet
#------------------------------------------------------------------
resource "aws_subnet" "company_service_env_function_subnet" {
  count             = length(var.az)
  availability_zone = var.az[count.index]
  cidr_block        = var.cidr_block[count.index]
  vpc_id            = var.vpc_id

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-${var.function}-${replace(var.az[count.index], var.region, "")}-subnet"
    
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
