variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name prefix used to tag and name all resources"
  type        = string
  default     = "tech-challenge-3"
}

variable "instance_type" {
  description = "EC2 instance type (t2.micro / t3.micro are AWS free-tier eligible)"
  type        = string
  default     = "t2.micro"
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the instance on port 22. Defaults to open for convenience during the challenge; restrict this to your own IP (e.g. \"1.2.3.4/32\") for a production setup."
  type        = string
  default     = "0.0.0.0/0"
}
