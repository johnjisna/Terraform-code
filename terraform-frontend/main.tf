module "my_s3_bucket" {
  source      = "./s3"
  bucket_name = var.bucket_name
  cloudfront_distribution_id = module.cdn.cloudfront_distribution_id
  iam_user_name = module.iam.iam_user_name
  iam_user_arn = module.iam.iam_user_arn
  policy_type  = var.policy_type


}

module "cdn" {
  
  source = "./cdn"
  bucket_regional_domain_name = module.my_s3_bucket.bucket_regional_domain_name
  custom_domain_name    = var.custom_domain_name
  acm_certificate_arn  = var.acm_certificate_arn
}

module "iam" {
  source = "./iam"
  iam_user_name = var.iam_user_name
  create_role    = var.create_role
  iam_policies  = {
  "s3_cdn" = "policies/s3_cdn_policy.json"
}
  
}
