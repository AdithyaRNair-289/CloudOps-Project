# Module 1: Cloud Infrastructure Provisioning & Virtualization

## Overview
This module covers setting up cloud infrastructure on AWS, deploying virtual machines, and containerizing applications using Docker.

## What I Did
- Created an AWS account and set up EC2 instance
- Deployed a virtual web server using Nginx on EC2
- Containerized a Flask application using Docker
- Pushed Docker image to Docker Hub

## Technologies Used
- AWS EC2 (t3.micro, Ubuntu 24.04)
- Docker
- Python Flask
- Nginx

## EC2 Setup
- Region: Asia Pacific (Sydney)
- Instance Type: t3.micro (Free Tier)
- OS: Ubuntu 24.04 LTS
- Security Groups: HTTP (80), SSH (22)

## Docker
- Built custom Flask application
- Created Dockerfile with python:3.9-slim base image
- Pushed to Docker Hub: adithyarnair/myapp

## Live URLs
- Docker Hub: https://hub.docker.com/r/adithyarnair/myapp
- EC2 Nginx: http://16.176.51.214

## Screenshots
Screenshots are available in the `/screenshots` folder