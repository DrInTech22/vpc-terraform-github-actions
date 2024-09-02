# Automate the deployment of AWS Infrastructure using Terraform and GitHub Actions.

![Project Flow](https://github.com/gauri17-pro/vpc-terraform-github-actions/assets/60473255/0e09102c-2949-4576-be43-39900a2c1a95)
 
 ## Introduction 
This project automates the creation of a Virtual Private Cloud (VPC) on AWS, including multiple subnets, EC2 instances, and an Application Load Balancer (ALB) using Terraform. Each EC2 instance hosts a simple HTML page that displays information about the instance. The ALB distributes incoming traffic across these instances, ensuring high availability.

<img src="Screenshot (398).png" width="45%"></img> <img src="Screenshot (397).png" width="45%"></img> 

Terraform is an open-source infrastructure as code (IaC) tool that allows you to define and provision infrastructure using a declarative configuration language. 
 
Whereas GitHub Actions is a powerful CI/CD tool.

## Prerequisites
Before you begin, ensure you have the following prerequisites:

* GitHub Account
* Terraform installed on your local machine.
* Access to a cloud provider account (e.g., AWS, Azure, Google Cloud) and necessary API credentials.

## Project Structure
### Terraform Modules
The infrastructure is built using Terraform modules, which allows for a modular and reusable setup. The key components are:

- VPC Module: Manages the creation of the VPC and its associated subnets.
- EC2 Module: Automates the deployment of EC2 instances in the specified subnets.
- ALB Module: Sets up an Application Load Balancer to distribute traffic across the EC2 instances.
- SG Module: sets up security groups that define allowed inbound and outboud traffics to EC2 instances.
###  Automation with GitHub Actions
Two GitHub Actions workflows were created to automate the execution of Terraform scripts:

1. **Terraform Apply Workflow**
Automatically runs terraform apply whenever changes are made to the Terraform folder in the repository.

2. **Terraform Destroy Workflow**:
Manually triggered to run terraform destroy.This is used to tear down the infrastructure and clean up resources once the project is concluded.
![alt text](<Screenshot (395).png>)
![alt text](<Screenshot (401).png>)
