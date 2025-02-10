output "iam_user_name" {
  description = "The IAM user name"
  value       = aws_iam_user.user.name
}

output "policy_arns" {
  description = "The ARNs of the attached policies"
  value       = [for policy in aws_iam_policy.policies : policy.arn]
}

output "iam_user_arn" {
  description = "IAM User ARN"
  value       = aws_iam_user.user.arn
}

output "iam_role_arn" {
  description = "ARN of the created IAM role"
  value       = aws_iam_role.ecr_read.arn
}

