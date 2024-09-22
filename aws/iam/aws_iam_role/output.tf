# aws_iam_role
#------------------------------------------------------------------
output "iam_role_id" {
  value = aws_iam_role.company_account_function_role.id
}
output "iam_role_arn" {
  value = aws_iam_role.company_account_function_role.arn
}
output "iam_role_name" {
  value = aws_iam_role.company_account_function_role.name
}
