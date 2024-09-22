# aws_iam_policy
#------------------------------------------------------------------
resource "aws_iam_policy" "company_account_function_policy" {
  name        = "${var.company}-${var.account}-${var.function}-policy"
  # path        = "/"
  description = "${var.company}-${var.account}-${var.function}-policy"

  policy = <<EOF
${var.policy}
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
