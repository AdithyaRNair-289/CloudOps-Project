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

## Virtualization vs Containerization

### Virtualization (Virtual Machines)
- Uses a Hypervisor to run multiple complete operating systems on a single physical server
- Each VM includes its own full OS, kernel, and libraries
- Heavier — typically GBs in size, slower to start (minutes)
- Used in this project: AWS EC2 instance (a full virtual machine)
- Better for: running different operating systems on the same hardware, strong isolation

### Containerization (Docker)
- Uses the host machine's OS kernel, packaging only the application and its dependencies
- No separate guest OS — containers share the host kernel
- Lightweight — typically MBs in size, starts in seconds
- Used in this project: Docker container running the Flask application, deployed to Docker Hub and Kubernetes
- Better for: fast deployment, scaling, microservices, CI/CD pipelines

### Comparison Summary

| Aspect | Virtual Machine (EC2) | Container (Docker) |
|---|---|---|
| Isolation level | Full OS-level isolation | Process-level isolation |
| Boot time | Minutes | Seconds |
| Size | GBs | MBs |
| Resource usage | Higher (own OS per VM) | Lower (shared host kernel) |
| Portability | Less portable | Highly portable (same image runs anywhere) |
| Used for | EC2 web server in Module 1 | Flask app container in Module 1, scaled via Kubernetes in Module 3 |

### Why CloudOps Enterprise Platform Uses Both
This project intentionally uses both approaches to demonstrate real-world cloud architecture:
- **EC2 (VM)** hosts the underlying infrastructure and demonstrates traditional IaaS provisioning
- **Docker (Container)** packages the Flask application for consistent, portable deployment
- **Kubernetes** (Module 3) then orchestrates multiple container replicas for scalability and high availability

This mirrors how production companies like Netflix and Uber combine VMs for base infrastructure with containers for fast, scalable application deployment.