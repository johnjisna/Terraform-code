Terraform Code Setup
----------------------
This repository contains Terraform configurations for setting up both backend and frontend infrastructure components on AWS. The code is organized into two main directories:

- terraform-backend: Provisions backend resources such as Secrets Manager, an EC2 instance, an ECR repository, and IAM roles/policies.
- terraform-frontend: Provisions frontend resources including an S3 bucket for static content, a CloudFront CDN distribution, and associated IAM policies.

Prerequisites
Before you begin, ensure that you have:

Terraform installed on your local machine.
- The AWS CLI installed and configured with credentials that have permissions to create resources (EC2, S3, IAM, etc.).
- An AWS account.
- Basic knowledge of Terraform commands: init, plan, apply, and destroy.

  Terraform-code/
├── terraform-backend
│   ├── main.tf
│   └── (other module directories such as ./secrets, ./ec2, ./ecr, ./iam)
└── terraform-frontend
    ├── main.tf
    └── (other module directories such as ./s3, ./cdn, ./iam)
  
Setup Instructions

- clone this repository to your local machine
  git clone https://github.com/johnjisna/Terraform-code.git
  cd Terraform-code
-  Configure AWS Credentials
  Create provider.tf file with aws access
- Deploy the Backend Infrastructure
  cd terraform-backend
  terraform init
  terraform plan
  terraform apply
- Deploy the Frontend Infrastructure
  cd terraform-frontend
  terraform plan
  terraform apply
- cleanup
  terraform destroy

  
  
  


