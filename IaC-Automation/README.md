# Module 5: Automation & Infrastructure as Code (Terraform)

## Overview
This module covers automating cloud infrastructure provisioning using Terraform — writing code to create AWS resources instead of clicking manually.

## What I Did
- Installed Terraform v1.15.5 on local machine
- Wrote Terraform configuration files
- Defined AWS provider and region
- Created S3 bucket using Terraform code
- Created Security Group using Terraform code
- Defined variables for reusable configuration
- Defined outputs to display resource information

## Technologies Used
- Terraform v1.15.5
- AWS Provider (hashicorp/aws ~> 5.0)
- AWS S3
- AWS Security Groups

## Files
- main.tf — Main infrastructure configuration
- variables.tf — Input variables
- outputs.tf — Output values

## Terraform Commands
```bash
# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Apply changes
terraform apply

# Destroy resources
terraform destroy
```

## Infrastructure Created
- S3 Bucket: cloudops-terraform-bucket-adithya
- Security Group: cloudops-terraform-sg
  - Inbound: SSH (22), HTTP (80)
  - Outbound: All traffic

## Screenshots
Screenshots are available in the /screenshots folder