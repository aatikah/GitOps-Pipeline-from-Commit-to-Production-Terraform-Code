output "cluster_name" {
  description = "Name of the EKS cluster."
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for the EKS cluster."
  value       = module.eks.cluster_endpoint
}

output "ecr_repository_url" {
  description = "URL for the application ECR repository."
  value       = aws_ecr_repository.app.repository_url
}

output "github_actions_iam_role_arn" {
  description = "IAM role ARN assumed by GitHub Actions via OIDC."
  value       = aws_iam_role.github_actions_oidc.arn
}

output "aws_load_balancer_controller_role_arn" {
  description = "IAM role ARN assumed by the AWS Load Balancer Controller."
  value       = aws_iam_role.aws_load_balancer_controller.arn
}

output "vpc_id" {
  description = "VPC ID for the EKS cluster."
  value       = module.vpc.vpc_id
}
