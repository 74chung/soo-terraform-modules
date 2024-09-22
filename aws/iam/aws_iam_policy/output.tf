# aws_iam_policy
#------------------------------------------------------------------
output "iam_policy_id" {
  value = aws_iam_policy.company_account_function_policy.id
}
output "iam_policy_arn" {
  value = aws_iam_policy.company_account_function_policy.arn
}
output "iam_policy_name" {
  value = aws_iam_policy.company_account_function_policy.name
}
