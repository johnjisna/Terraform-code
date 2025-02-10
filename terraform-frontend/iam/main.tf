resource "aws_iam_user" "user" {
  name = var.iam_user_name
}

resource "aws_iam_policy" "policies" {
  for_each    = var.iam_policies
  name        = each.key
  description = "IAM policy for ${each.key}"
  policy      = file(each.value)
}

resource "aws_iam_user_policy_attachment" "policy_attachments" {
  for_each   = aws_iam_policy.policies
  user       = aws_iam_user.user.name
  policy_arn = each.value.arn
}