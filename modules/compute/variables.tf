variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "env" {
  description = "Deployment environment (e.g. dev, qa, prod)"
  type        = string
  default     = "dev"
}

# Optional: allow overriding the AMI if needed
variable "ami" {
  description = "AMI id for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}
