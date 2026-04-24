zip lambda.zip lambda_function.py --> To zip the lamda script


📁 Folder Structure

terraform-aws-lambda-offline/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── lambda_function.py
└── layer.zip
    └── python/
          └── <libraries>
├── .gitignore
└── README.md




# Terraform AWS Lambda (Offline Setup)

This project creates an AWS Lambda function using Terraform without relying on internet templates.

## 📁 Files
- main.tf → Core infrastructure
- variables.tf → Configurable values
- outputs.tf → Outputs
- lambda_function.py → Lambda code

## 🚀 Setup

### 1. Zip the Lambda
zip lambda.zip lambda_function.py

### 2. Initialize Terraform
terraform init

### 3. Plan
terraform plan

### 4. Apply
terraform apply

## 🔐 Prerequisites
- AWS CLI configured (`aws configure`)
- Terraform installed

## 🌍 Region
Default: ap-south-1
