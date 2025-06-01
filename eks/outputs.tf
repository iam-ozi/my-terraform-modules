// my-terraform-modules/eks/outputs.tf

output "cluster_name" {
  description = "Name of the created EKS cluster"
  value       = aws_eks_cluster.this.name
}

# You could also add more outputs if needed, e.g. endpoint, cluster_arn, etc.
