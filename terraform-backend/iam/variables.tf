variable "iam_user_name" {
  description = "The name of the IAM user"
  type        = string
}

variable "iam_policies" {
  description = "Map of policy names to their JSON file paths for the IAM user"
  type        = map(string)
}

variable "iam_role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "trusted_services" {
  description = "List of AWS services that can assume this IAM role"
  type        = list(string)
}


