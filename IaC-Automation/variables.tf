# Variables for CloudOps Terraform Configuration

variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "CloudOps"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "Production"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "cloudops-terraform-bucket-adithya"
}