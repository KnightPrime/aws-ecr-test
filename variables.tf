variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "repo_name" {
  description = "Name of repository"
  type        = string
  default     = "my-test-project"
}

