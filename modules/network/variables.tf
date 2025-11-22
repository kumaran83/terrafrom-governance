variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"

  validation {
    condition     = can(cidrhost(var.cidr_block, 1))
    error_message = "cidr_block must be a valid CIDR (e.g. 10.0.0.0/16)."
  }
}

variable "env" {
  description = "Deployment environment (e.g. dev, qa, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "qa", "prod"], var.env)
    error_message = "env must be one of: dev, qa, prod."
  }
}