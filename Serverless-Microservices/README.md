# Module 3: Serverless Architecture & Microservices

## Overview
This module covers deploying serverless functions using AWS Lambda, setting up API Gateway to trigger Lambda functions, and building microservices architecture.

## What I Did
- Created AWS Lambda function with Python runtime
- Wrote serverless function to handle HTTP requests
- Set up API Gateway (HTTP API) to trigger Lambda
- Created GET /hello route connected to Lambda
- Tested Lambda function successfully
- Deployed live API endpoint

## Technologies Used
- AWS Lambda (Python 3.x)
- AWS API Gateway (HTTP API)
- Python JSON

## Lambda Function
- Function Name: cloudops-lambda-function
- Runtime: Python 3.x
- Handler: lambda_function.lambda_handler
- Memory: 128 MB
- Duration: ~2ms

## API Gateway
- API Name: cloudops-api
- Type: HTTP API
- Route: GET /hello
- Stage: $default (Auto-deploy enabled)

## Live API Endpoint
https://mfprs6zvff.execute-api.us-east-1.amazonaws.com/hello

## Test Result
Response: {"message": "Hello Adithya from CloudOps Lambda!", "service": "CloudOps Serverless Platform", "status": "healthy"}

## Screenshots
Screenshots are available in the /screenshots folder