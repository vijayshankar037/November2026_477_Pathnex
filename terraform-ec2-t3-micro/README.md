
# Terraform AWS EC2 – t3.micro

## 1. Project Overview

This project uses Terraform (Infrastructure as Code) to provision an AWS EC2 instance of type `t3.micro` running Amazon Linux 2023.

### Project Details

| Parameter | Value |
|---|---|
| Cloud Provider | AWS |
| Infrastructure Tool | Terraform |
| Resource | EC2 Instance |
| Instance Type | t3.micro |
| Operating System | Amazon Linux 2023 |
| AWS Region | ap-south-1 (Mumbai) |
| Environment | Development |
| Instance Management | Terraform |

---

## 2. Project Directory Structure

```text
terraform-ec2-t3-micro/
│
├── .terraform/                  # Terraform working directory
├── .terraform.lock.hcl          # Provider dependency lock file
│
├── README.md                    # Project documentation
├── versions.tf                  # Terraform and provider versions
├── provider.tf                  # AWS provider configuration
├── variables.tf                 # Input variable declarations
├── terraform.tfvars             # Environment-specific values
├── data.tf                      # AWS data sources (AMI lookup)
├── main.tf                      # EC2 infrastructure definition
├── outputs.tf                   # Infrastructure output values
│
├── terraform.tfstate            # Terraform state file
└── terraform.tfstate.backup     # Previous state snapshot
```

**Note:** The `.terraform/` directory, state files, and sensitive variable files should not be committed to Git.

---

## 3. File Responsibilities

| File | Responsibility |
|---|---|
| `versions.tf` | Defines Terraform and AWS provider version requirements |
| `provider.tf` | Configures AWS provider and deployment region |
| `variables.tf` | Declares reusable input variables |
| `terraform.tfvars` | Provides actual variable values |
| `data.tf` | Retrieves the latest Amazon Linux 2023 AMI |
| `main.tf` | Defines and provisions the EC2 instance |
| `outputs.tf` | Displays instance ID, public IP, private IP, and availability zone |
| `.gitignore` | Prevents sensitive and unnecessary files from being committed |
| `.terraform.lock.hcl` | Locks provider dependency versions |
| `terraform.tfstate` | Tracks Terraform-managed infrastructure |
| `terraform.tfstate.backup` | Stores a previous local state snapshot |

---

## 4. Prerequisites

Before deploying the infrastructure, ensure the following are installed:

- AWS Account
- AWS CLI
- Terraform CLI (version 1.5.0 or later)
- Git

### Configure AWS Credentials

```bash
aws configure
```

Provide the following details:

- AWS Access Key ID
- AWS Secret Access Key
- Default region: `ap-south-1`
- Output format: `json`

Use an appropriately privileged IAM identity and avoid hardcoding credentials in Terraform files.

---

## 5. Terraform Deployment Commands

Navigate to the project directory:

```bash
cd terraform-ec2-t3-micro
```

### Step 1: Initialize Terraform

Downloads required providers and initializes the working directory.

```bash
terraform init
```

### Step 2: Format Terraform Files

Formats Terraform configuration files.

```bash
terraform fmt -recursive
```

### Step 3: Validate Configuration

Checks Terraform configuration syntax and consistency.

```bash
terraform validate
```

### Step 4: Review Deployment Plan

Previews infrastructure changes before deployment.

```bash
terraform plan
```

### Step 5: Deploy Infrastructure

Creates the EC2 instance in AWS.

```bash
terraform apply
```

Review the execution plan and enter `yes` when prompted.

### Step 6: View Terraform Outputs

Displays EC2 instance details.

```bash
terraform output
```

To display specific outputs:

```bash
terraform output instance_id
terraform output public_ip
terraform output private_ip
```

---

## 6. Terraform State Management Commands

### View Current Terraform State

```bash
terraform show
```

### List Managed Resources

```bash
terraform state list
```

### Inspect a Specific Resource

```bash
terraform state show aws_instance.this
```

**Important:** Never manually modify Terraform state files. Protect state files because they can contain sensitive infrastructure information.

---

## 7. Destroy Infrastructure

When the EC2 instance is no longer required, remove the infrastructure:

```bash
terraform destroy
```

Review the destruction plan and enter `yes` when prompted.

**Note:** Destroying the EC2 instance can result in permanent loss of data stored on its instance storage. Back up required data first.

---

## 8. Git and GitHub Management

The parent directory `November2026_Vijay_Pathnex/` contains the shared `.gitignore` file.

Terraform state files, working directories, and variable files are excluded from Git.

Initialize Git from the repository root:

```bash
git init
```

Check repository status:

```bash
git status
```

Add project files:

```bash
git add .
```

Commit changes:

```bash
git commit -m "Add Terraform EC2 t3.micro infrastructure"
```

Push to GitHub after configuring the remote repository:

```bash
git push -u origin main
```

### Files That Should Not Be Committed

- `terraform.tfstate`
- `terraform.tfstate.backup`
- `.terraform/`
- `terraform.tfvars` (when excluded by the parent `.gitignore`)
- Sensitive credentials or secret files
- Saved Terraform plan files

### Files Recommended for GitHub

- `main.tf`
- `provider.tf`
- `versions.tf`
- `variables.tf`
- `data.tf`
- `outputs.tf`
- `.terraform.lock.hcl`
- `README.md`
- `.gitignore` (in the parent repository directory)

---

## 9. Important Best Practices

1. Follow Infrastructure as Code (IaC) principles.
2. Keep Terraform configuration modular and reusable.
3. Use variables instead of hardcoding configuration values.
4. Never commit AWS credentials or sensitive information.
5. Never commit Terraform state files to public repositories.
6. Use remote state storage for team-based infrastructure management.
7. Keep `.terraform.lock.hcl` under version control.
8. Always run `terraform plan` before `terraform apply`.
9. Use IAM permissions following the least-privilege principle.
10. Destroy unused infrastructure to avoid unnecessary AWS charges.

---

## 10. Future Enhancements

The project can be extended with the following AWS and Terraform capabilities:

- Custom VPC and subnet configuration
- Security groups and controlled SSH access
- EC2 key pair integration
- Reusable Terraform modules
- Remote state management using Amazon S3
- Separate Dev, Stage, and Production environments
- Terraform CI/CD pipeline using GitHub Actions

---

## 11. Project Summary

This project demonstrates the fundamentals of managing AWS infrastructure using Terraform.

### Key Learning Outcomes

- Terraform project organization
- AWS provider configuration
- Terraform variables and outputs
- Data sources and resource blocks
- EC2 provisioning
- Terraform state management
- Git and GitHub integration
- Infrastructure lifecycle management

### Technology Stack

**AWS | Terraform | Amazon Linux 2023 | Git | GitHub**
