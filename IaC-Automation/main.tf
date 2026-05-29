# CloudOps Enterprise Platform - Terraform Infrastructure
# Module 5: Infrastructure as Code

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# S3 Bucket for CloudOps
resource "aws_s3_bucket" "cloudops_bucket" {
  bucket = "cloudops-terraform-bucket-adithya"

  tags = {
    Name        = "CloudOps Terraform Bucket"
    Environment = "Production"
    Project     = "CloudOps"
  }
}

# Security Group
resource "aws_security_group" "cloudops_sg" {
  name        = "cloudops-terraform-sg"
  description = "Security group created by Terraform for CloudOps"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "cloudops-terraform-sg"
    Project = "CloudOps"
  }
}