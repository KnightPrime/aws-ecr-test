# Output the repository URL for deployment use
output "ecr_repository_url" {
  value       = aws_ecr_repository.project_repo.repository_url
  description = "The URL of the ECR repository"
}
