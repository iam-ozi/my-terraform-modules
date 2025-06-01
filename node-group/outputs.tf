// my-terraform-modules/node-group/outputs.tf

output "node_group_name" {
  description = "Name of the created EKS node group"
  value       = aws_eks_node_group.this.node_group_name
}

output "node_group_arn" {
  description = "ARN of the created EKS node group"
  value       = aws_eks_node_group.this.arn
}
