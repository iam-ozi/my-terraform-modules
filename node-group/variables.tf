// my-terraform-modules/node-group/variables.tf

variable "cluster_name" {
  description = "Name of the EKS cluster to attach this node group to"
  type        = string
}

variable "node_group_name" {
  description = "Name to give the EKS node group"
  type        = string
}

variable "node_role_arn" {
  description = "ARN of the IAM role for EKS worker nodes"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where the node group will run"
  type        = list(string)
}

variable "desired_size" {
  description = "Desired number of nodes in the group"
  type        = number
}

variable "max_size" {
  description = "Maximum number of nodes in the group"
  type        = number
}

variable "min_size" {
  description = "Minimum number of nodes in the group"
  type        = number
}

variable "instance_types" {
  description = "List of instance types for worker nodes"
  type        = list(string)
}

variable "ami_type" {
  description = "AMI type (e.g., 'AL2_x86_64') for the worker nodes"
  type        = string
}

variable "env" {
  description = "Environment tag to apply to this node group"
  type        = string
}
