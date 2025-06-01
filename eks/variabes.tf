// my-terraform-modules/eks/variables.tf

variable "cluster_name" {
  description = "Name for the EKS cluster"
  type        = string
}

variable "cluster_iam_role_arn" {
  description = "ARN of the IAM role that EKS will assume for the control plane"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS control plane"
  type        = list(string)
}

variable "k8s_version" {
  description = "Kubernetes version for the EKS cluster (e.g., '1.22')"
  type        = string
}

variable "env" {
  description = "Environment tag to apply (e.g., 'dev' or 'prod')"
  type        = string
}
