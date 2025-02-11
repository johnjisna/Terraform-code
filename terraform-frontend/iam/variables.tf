variable "iam_user_name" {
  description = "Name of the IAM user."
  type        = string
}

variable "iam_policies" {
  description = "Map of policy names to file paths for the policy documents."
  type        = map(string)
}

variable "create_role" {
  description = "Set to true to create an IAM role and attach policies to it."
  type        = bool
  default     = false
}

variable "iam_role_name" {
  description = "Name of the IAM role to create when create_role is true."
  type        = string
  default     = ""
}

variable "trusted_services" {
  description = "List of trusted service principals for the IAM role."
  type        = list(string)
  default     = []
}
