# aws_iam_role
#------------------------------------------------------------------
resource "aws_iam_role" "company_account_function_role" {
  name        = "${var.company}-${var.account}-${var.function}-role"
  description = "${var.company}-${var.account}-${var.function}-role"

  assume_role_policy = <<EOF
${var.assume_role_policy}
EOF

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
