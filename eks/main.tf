resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  version = var.k8s_version

  tags = {
    Environment = var.env
  }

  # Ensure Terraform creates/attaches the policy before creating the cluster
  depends_on = [
    aws_iam_role_policy_attachment.eks
  ]
}
