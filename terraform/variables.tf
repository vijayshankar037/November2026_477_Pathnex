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

variable "allowed_cidr" {
  description = "Your public IPv4 address as a single-address CIDR (for example, 203.0.113.10/32)"
  type        = string

  validation {
    condition     = can(cidrnetmask(var.allowed_cidr)) && try(tonumber(split("/", var.allowed_cidr)[1]) == 32, false)
    error_message = "allowed_cidr must be a single IPv4 address with a /32 prefix."
  }
}

variable "key_name" {
  description = "Optional name of an existing EC2 key pair for SSH access"
  type        = string
  default     = null
  nullable    = true
}
