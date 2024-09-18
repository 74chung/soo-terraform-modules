# aws_route_table
#------------------------------------------------------------------
resource "aws_route_table" "company_service_env_function_rt" {
  count  = length(var.az)
  vpc_id = var.vpc_id

  tags = {
    Name       = "${var.company}-${var.service}-${var.env}-${var.function}-rt-${replace(var.az[count.index], var.region, "")}"

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
resource "aws_route_table_association" "association" {
  count          = length(var.az)
  route_table_id = aws_route_table.company_service_env_function_rt[count.index].id
  subnet_id      = var.subnet_id[count.index]
}
