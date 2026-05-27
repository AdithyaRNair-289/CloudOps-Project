# Module 4: Cloud Security, IAM & Monitoring

## Overview
This module covers setting up IAM users, roles, policies and CloudWatch monitoring with alerts for the CloudOps platform.

## What I Did
- Created IAM user with least privilege access
- Created IAM role for EC2 with S3 and CloudWatch access
- Configured CloudWatch alarm for Lambda invocations
- Set up SNS email notifications for alerts
- Confirmed SNS subscription

## Technologies Used
- AWS IAM (Identity and Access Management)
- AWS CloudWatch
- AWS SNS (Simple Notification Service)

## IAM User
- Username: cloudops-dev-user
- Console Access: Enabled
- Policies:
  - AmazonS3ReadOnlyAccess
  - AmazonEC2ReadOnlyAccess
  - CloudWatchReadOnlyAccess

## IAM Role
- Role Name: cloudops-ec2-role
- Trusted Entity: EC2
- Policies:
  - AmazonS3ReadOnlyAccess
  - CloudWatchFullAccess

## CloudWatch Alarm
- Alarm Name: cloudops-lambda-invocations-alarm
- Metric: Lambda Invocations
- Condition: Invocations > 10 within 5 minutes
- Action: SNS email notification
- Topic: cloudops-alerts

## Screenshots
Screenshots are available in the /screenshots folder