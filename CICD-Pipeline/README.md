# Module 6: CI/CD Pipeline Engineering

## Overview
This module covers setting up automated CI/CD pipelines using GitHub Actions to automatically test and deploy the CloudOps application on every code push.

## What I Did
- Created GitHub Actions workflow file
- Set up automated Python testing pipeline
- Configured Docker build automation
- Implemented continuous integration on every push to master branch

## Technologies Used
- GitHub Actions
- Docker
- Python Flask
- Ubuntu (GitHub hosted runner)

## Pipeline Stages
1. Build and Test
   - Checkout code
   - Set up Python 3.9
   - Install Flask dependencies
   - Run automated tests

2. Docker Build
   - Checkout code
   - Build Docker image from Infrastructure folder
   - Verify build success

## Workflow Trigger
- Push to master branch
- Pull request to master branch

## Pipeline File
Located at: .github/workflows/deploy.yml

## Screenshots
Screenshots are available in the /screenshots folder