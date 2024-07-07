# Strapi Deployment on AWS ECS Fargate with Terraform

## Introduction

This project provides an automated setup for deploying a Strapi application on AWS ECS Fargate using Terraform. The setup ensures a scalable and highly available architecture, leveraging AWS services for deployment and management. 

## Features

- **Infrastructure as Code**: Using Terraform to manage infrastructure.
- **Containerization**: Deploys Strapi as a Docker container.
- **Elastic Load Balancing**: Ensures high availability with an Application Load Balancer.
- **AWS Fargate**: Serverless compute engine for containers, allowing you to run containers without managing servers.
- **Scalability**: Supports scaling by adjusting the number of ECS tasks.

## Prerequisites

- [AWS CLI](https://aws.amazon.com/cli/) installed and configured.
- [Terraform](https://www.terraform.io/downloads.html) installed.
- [Docker](https://www.docker.com/products/docker-desktop) installed and running.
- AWS account with necessary permissions.
- Basic knowledge of AWS services and Terraform.

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/ansal-sajan/strapi-deployment-terraform.git
cd strapi-deployment-terraform
