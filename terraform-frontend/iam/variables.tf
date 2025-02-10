variable "iam_user_name" {
  description = "The name of the IAM user"
  type        = string
}

variable "iam_policies" {
  description = "Map of policy names to their JSON file paths for the IAM user"
  type        = map(string)
}
