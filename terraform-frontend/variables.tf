variable "acm_certificate_arn" {
  description = "The ARN of the ACM certificate for the custom domain"
  type        = string
  default     = null  
}

variable "custom_domain_name" {
  description = "The custom domain name for the CloudFront distribution"
  type        = string
  default     = null  
}

variable "iam_user_name" {
  description = "Name of the IAM user for S3"
  type        = string
  
}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
  default = "null"
}

variable "policy_type" {
  description = "access type wheather its a cloudfront or iam user"
  type        = string
  default = "null"
}

variable "bucket_name" {
  description = "bucket name"
  type        = string
  default = "null"
}

variable "create_role" {
  description = "Set to true to create an IAM role and attach policies to it."
  type        = bool
  default     = false
}



