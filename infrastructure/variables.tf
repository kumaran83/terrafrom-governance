variable "region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "ap-south-1"
}

variable "env" {
  description = "Deployment environment (dev, qa, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "qa", "prod"], var.env)
    error_message = "env must be one of: dev, qa, prod."
  }
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"

  validation {
    condition     = can(cidrhost(var.cidr_block, 1))
    error_message = "cidr_block must be a valid CIDR (e.g. 10.0.0.0/16)."
  }
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}