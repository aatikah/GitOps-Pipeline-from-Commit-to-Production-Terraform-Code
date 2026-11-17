variable "project_name" {
  description = "Name prefix for AWS resources. Must be lowercase and contain only letters, numbers, and hyphens."
  type        = string
  default     = "full-gitops"

  validation {
    condition     = can(regex("^[a-z0-9]+(-[a-z0-9]+)*$", var.project_name))
    error_message = "project_name must be lowercase and may only contain letters, numbers, and hyphens."
  }
}

variable "aws_region" {
  description = "Primary AWS region for the EKS cluster and ECR repository."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
  default     = "gitops-eks"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.31"
}

variable "github_owner" {
  description = "GitHub organization or username that contains the app repository."
  type        = string
  default     = "your-org"
}

variable "github_repo" {
  description = "Application repository name used in the GitHub Actions OIDC trust policy."
  type        = string
  default     = "app-repo"
}

variable "github_branch" {
  description = "Git branch that is allowed to assume the AWS IAM role from GitHub Actions."
  type        = string
  default     = "main"
}

variable "github_repo_owner_id" {
  description = "Immutable GitHub owner ID for the newer OIDC subject format introduced after the July 2026 change. Replace this placeholder with the actual owner ID."
  type        = string
  default     = "00000000000000000000"
}

variable "github_repo_id" {
  description = "Immutable GitHub repository ID for the newer OIDC subject format. Replace this placeholder with the actual GitHub repository ID."
  type        = string
  default     = "00000000000000000000"
}

variable "az_count" {
  description = "Number of availability zones used by the VPC."
  type        = number
  default     = 2
}

variable "node_group_desired_size" {
  description = "Desired number of EKS worker nodes."
  type        = number
  default     = 2
}

variable "node_group_max_size" {
  description = "Maximum number of EKS worker nodes."
  type        = number
  default     = 4
}

variable "node_group_min_size" {
  description = "Minimum number of EKS worker nodes."
  type        = number
  default     = 2
}

variable "node_group_instance_type" {
  description = "Instance type for EKS worker nodes."
  type        = string
  default     = "t3.medium"
}
