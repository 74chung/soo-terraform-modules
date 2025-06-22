# aws_s3_bucket
#------------------------------------------------------------------
resource "aws_s3_bucket" "company_service_env_function_bucket" {
  bucket        = "${var.company}-${var.service}-${var.env}-${var.function}-bucket"
  force_destroy = true

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
resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.company_service_env_function_bucket.id
  versioning_configuration {
    status = var.versioning_status # Enabled, Suspended, Disabled(default, only be used when creating)
  }
}
resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_server_side_encryption_configuration" {
  bucket = aws_s3_bucket.company_service_env_function_bucket.id
  rule {
    bucket_key_enabled = var.bucket_key_enabled
  }
}
# resource "aws_s3_bucket_logging" "bucket_logging" {
#   bucket        = aws_s3_bucket.company_service_env_function_bucket.id
#   target_bucket = var.logging_target_bucket # server access logging, bucket name=bucket id
#   target_prefix = "${aws_s3_bucket.company_service_env_function_bucket.id}/"
# }
