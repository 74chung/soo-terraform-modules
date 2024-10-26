# aws_s3_bucket
#------------------------------------------------------------------
output "bucket_id" {
  value = aws_s3_bucket.company_service_env_function_bucket.id
}
output "bucket_arn" {
  value = aws_s3_bucket.company_service_env_function_bucket.arn
}
