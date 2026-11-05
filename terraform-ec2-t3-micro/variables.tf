# Input variable declarations
variable "aws_region" {
  description = "AWS region where EC2 will be deployed"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "Vijay-EC2"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = "Vijay-Terraform-t3-micro"
}
