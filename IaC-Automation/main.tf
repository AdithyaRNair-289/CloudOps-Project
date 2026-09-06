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
# IAM Role for Lambda (required for Lambda execution)
resource "aws_iam_role" "lambda_role" {
  name = "cloudops-terraform-lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })

  tags = {
    Name    = "cloudops-terraform-lambda-role"
    Project = "CloudOps"
  }
}

# Attach basic Lambda execution policy
resource "aws_iam_role_policy_attachment" "lambda_basic" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# Lambda Function (Serverless Component via Terraform)
resource "aws_lambda_function" "cloudops_lambda" {
  filename         = "lambda_function.zip"
  function_name    = "cloudops-terraform-lambda"
  role             = aws_iam_role.lambda_role.arn
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.9"
  source_code_hash = filebase64sha256("lambda_function.zip")

  environment {
    variables = {
      APP_NAME    = "CloudOps Enterprise Platform"
      ENVIRONMENT = "Production"
    }
  }

  tags = {
    Name    = "cloudops-terraform-lambda"
    Project = "CloudOps"
  }
}
# Data source to get the latest Amazon Linux 2 AMI (free tier eligible)
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# EC2 Instance (VM provisioned via Terraform)
resource "aws_instance" "cloudops_terraform_vm" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.cloudops_sg.id]

  tags = {
    Name    = "cloudops-terraform-vm"
    Project = "CloudOps"
  }
}