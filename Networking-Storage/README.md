# Module 2: Cloud Networking, Storage & Data Layer

## Overview
This module covers setting up a secure cloud network, object storage with lifecycle policies, and managed database services on AWS.

## What I Did
- Created a custom VPC with public and private subnets
- Configured Security Groups with HTTP, HTTPS and SSH rules
- Set up S3 bucket with lifecycle policies for data archival
- Deployed MySQL RDS database instance
- Secured application-to-database connectivity

## Technologies Used
- AWS VPC (Virtual Private Cloud)
- AWS Security Groups
- AWS S3 (Simple Storage Service)
- AWS RDS (MySQL 8.4.8)

## VPC Configuration
- VPC Name: project-vpc
- CIDR Block: 10.0.0.0/16
- Public Subnets: 2
- Private Subnets: 2
- Internet Gateway: Enabled
- S3 Endpoint: Enabled

## Security Group
- Name: cloudops-security-group
- Rules: SSH (22), HTTP (80), HTTPS (443)

## S3 Configuration
- Bucket: adithya-s3-website-123
- Lifecycle Rule: cloudops-lifecycle-rule
- Transition to Standard-IA: after 30 days
- Expiration: after 90 days

## RDS Database
- Identifier: database-1
- Engine: MySQL 8.4.8
- Instance: db.t4g.micro
- VPC: project-vpc
- Security Group: cloudops-security-group

## Screenshots
Screenshots are available in the /screenshots folder