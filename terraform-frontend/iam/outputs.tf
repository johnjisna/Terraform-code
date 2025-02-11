output "iam_user_name" {
  description = "The IAM user name."
  value       = aws_iam_user.user.name
}

output "iam_policy_arns" {
  description = "A map of policy names to their ARNs."
  value       = { for k, v in aws_iam_policy.policies : k => v.arn }
}

output "iam_role_name" {
  description = "The IAM role name if created; otherwise an empty string."
  value       = var.create_role ? aws_iam_role.role[0].name : ""
}

output "iam_user_arn" {
  description = "IAM User ARN"
  value       = aws_iam_user.user.arn
}
