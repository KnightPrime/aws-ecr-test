# Configure the AWS Provider
provider "aws" {
  region = var.aws_region 
}

# Create the Amazon ECR Repository
resource "aws_ecr_repository" "project_repo" {
  name                 = var.repo_name # Name of repository
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true # Automatically scans images for vulnerabilities
  }

  tags = {
    Environment = "Production"
    Project     = "CoreApp"
  }
}
