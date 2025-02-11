module "secrets_manager" {
  source        = "./secrets"
  secret_name   = var.secret_name
  description   = var.secret_description
  secret_values = var.secret_values
}

module "ec2" {
  source         = "./ec2"
  ami            = var.ami
  instance_type  = var.instance_type
  key_name       = var.key_name
  instance_name  = var.instance_name
  secret_id      = module.secrets_manager.secret_id
  region         = var.region
  environment = var.environment 
  ecr_repository_url = module.ecr.repository_url
}

module "ecr" {
  source = "./ecr"

  repository_name     = var.ecr_repository_name
  scan_on_push        = var.ecr_scan_on_push
  image_tag_mutability = var.ecr_image_tag_mutability
  tags                = {
    Environment = var.environment
    Project     = var.project
  }
}

module "iam" {
  source = "./iam"
  iam_user_name = var.iam_user_name
  iam_role_name   = var.iam_role_name
  trusted_services = var.trusted_services
  create_role    = var.create_role
  iam_policies = {
    "test-jenkins-user-policy"   = "policies/test-jenkins-user-policy.json",
    "test-secret-manager-policy" = "policies/test-secret-manager-policy.json"
    "test-ecr-read-policy"       = "policies/test-ecr-read-policy.json"
    
  }
  
}

  
