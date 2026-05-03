# terraform-aws-infra-automation

Production-style Infrastructure as Code (IaC) project built using Terraform to provision and manage AWS resources including multiple EC2 instances for Jenkins, application deployment, and DevOps lab environments.

---

## Project Overview

This project demonstrates automated AWS infrastructure provisioning using Terraform. Instead of creating cloud resources manually, Terraform configuration files were used to deploy complete infrastructure in a repeatable and scalable manner.

The setup included EC2 instances, networking configuration, security groups, SSH key usage, and infrastructure outputs required for DevOps project deployments.

This project was created to simulate real-world cloud infrastructure automation followed by CI/CD and Kubernetes deployments.

---

## Architecture

Terraform Code  
↓  
AWS Provider Authentication  
↓  
Security Groups Creation  
↓  
EC2 Instances Provisioned  
↓  
Jenkins Server Setup  
↓  
Application / Kubernetes Servers Setup  
↓  
Infrastructure Ready for Deployment

---

## Tech Stack

- Terraform
- AWS EC2
- AWS Security Groups
- AWS VPC
- Linux
- SSH Keys
- Infrastructure as Code (IaC)

---

## Key Features

- Automated EC2 instance provisioning
- Reusable Terraform configuration files
- Security group automation
- Infrastructure outputs (Public IP / Private IP)
- Fast environment recreation
- Consistent cloud deployments
- Reduced manual cloud setup effort

---

## Terraform Workflow

1. Write Terraform configuration files  
2. Initialize Terraform provider plugins  
3. Validate configuration syntax  
4. Generate execution plan  
5. Apply infrastructure changes  
6. Provision EC2 instances automatically  
7. Use created servers for DevOps projects

---

## Important Files

- `main.tf` – Core infrastructure resources
- `variables.tf` – Input variables
- `outputs.tf` – Displays IPs and useful outputs
- `terraform.tfvars` – Variable values
- `README.md` – Project documentation

---

## Sample Commands Used

- terraform init
- terraform validate
- terraform plan
- terraform apply -auto-approve
- terraform destroy -auto-approve

---

## Resources Provisioned

- Jenkins EC2 Server
- Application EC2 Server
- Kubernetes Master Node
- Kubernetes Worker Node
- Security Groups
- SSH Access Rules

---

## Results

- Faster AWS environment setup
- Reusable infrastructure deployment
- Eliminated repetitive manual provisioning
- Better cloud resource consistency
- Strong hands-on Terraform experience

---

## Key Learnings

- Terraform resource creation
- State management basics
- Variables and outputs usage
- AWS automation using Terraform
- Infrastructure lifecycle management

---

## Future Enhancements

- Remote backend using S3
- DynamoDB state locking
- Auto Scaling Groups
- Load Balancer integration
- Multi-environment setup (Dev / QA / Prod)

---

## Author

Shaik Abdul Rasheeq  
Cloud / DevOps Engineer
