# CloudOps Enterprise Platform - Final Architecture Documentation

## Project Overview
The CloudOps Enterprise Platform is a fully integrated, industry-grade cloud infrastructure 
and DevOps system built by Adithya R Nair. This project simulates real-world cloud 
engineering work similar to what companies like Netflix, Uber, and Swiggy operate in production.

## GitHub Repository
https://github.com/AdithyaRNair-289/CloudOps-Project

## Live Application
https://personal-4jumk5gt-dev.outsystems.app/CloudOpsEnterprisePlatform/Dashboard

## Architecture Overview
User → OutSystems App → API Gateway → Lambda → RDS MySQL → CloudWatch

## Modules Completed

### Module 1: Cloud Infrastructure
- Platform: AWS (us-east-1)
- EC2 Instance: Virtual web server
- Docker: Containerized Flask application
- Docker Hub: adithyarnair/myapp

### Module 2: Cloud Networking & Storage
- VPC: project-vpc (10.0.0.0/16)
- Security Group: cloudops-security-group
- S3 Bucket: adithya-s3-website-123
- RDS MySQL: database-1 (db.t4g.micro)

### Module 3: Serverless Architecture
- Lambda Function: cloudops-lambda-function (Python 3.x)
- API Gateway: cloudops-api (HTTP API)
- Live Endpoint: https://mfprs6zvff.execute-api.us-east-1.amazonaws.com/hello

### Module 4: Security & Monitoring
- IAM User: cloudops-dev-user (least privilege)
- IAM Role: cloudops-ec2-role (EC2 + S3 + CloudWatch)
- CloudWatch Alarm: cloudops-lambda-invocations-alarm
- SNS Topic: cloudops-alerts (email notifications)
- MFA: Enabled on AWS account

### Module 5: Infrastructure as Code
- Tool: Terraform v1.15.5
- Resources: S3 bucket + Security Group via code
- Files: main.tf, variables.tf, outputs.tf
- AWS Provider: hashicorp/aws ~> 5.0

### Module 6: CI/CD Pipeline
- Platform: GitHub Actions
- Pipeline Stages: unit-integration-tests → docker-build-push → deploy-notification
- Unit Tests: 8 tests passing (100% pass rate)
- Docker: Automated build and push to Docker Hub
- Image: adithyarnair/cloudops-app:latest

### Module 7: Big Data, AI & Stream Processing
- Platform: Google Cloud Platform
- Pub/Sub Topic: cloudops-realtime-stream
- BigQuery Dataset: cloudops_dataset
- BigQuery Table: cloudops_events (5 records)
- ML Model: Random Forest Classifier (Vertex AI)
- ML Accuracy: 100%

### Module 8: No-Code Deployment
- Platform: OutSystems ODC
- App: CloudOps Enterprise Platform
- Screens: Dashboard, Cloud Services, Alerts, User Logins
- Health Score: 93/100
- Roles: Admin, Cloud Operator

## Technologies Used
AWS, GCP, Docker, Terraform, GitHub Actions, Python, OutSystems,
Lambda, RDS, S3, VPC, IAM, CloudWatch, Pub/Sub, BigQuery, Vertex AI

## Final Deliverables
- Full Cloud Architecture Document ✅
- IaC Scripts (Terraform) ✅
- CI/CD Pipeline Files (GitHub Actions) ✅
- Docker Images ✅
- Monitoring Dashboard + Alert Screenshots ✅
- Deployed Cloud App (URL + screenshots) ✅
- Big Data + ML Pipeline ✅
- Architecture Diagram ✅