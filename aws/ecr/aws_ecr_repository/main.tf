# aws_ecr_repository
#------------------------------------------------------------------
resource "aws_ecr_repository" "company_service_env_function_repo" {
  name                 = "${var.company}-${var.service}-${var.env}-${var.function}"
  image_tag_mutability = var.image_tag_mutability # IMMUTABLE/MUTABLE, default=MUTABLE

  encryption_configuration {
    encryption_type = var.encryption_type # KMS/AES256, default=AES256
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

# aws_ecr_repository_policy
#------------------------------------------------------------------
resource "aws_ecr_repository_policy" "company_service_env_function_repo_policy" {
  repository = aws_ecr_repository.company_service_env_function_repo.name

  policy = <<EOF
${var.repository_policy}
EOF
}
