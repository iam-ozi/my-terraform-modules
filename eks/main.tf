resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = var.cluster_iam_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  version = var.k8s_version

  tags = {
    Environment = var.env
  }

  depends_on = [aws_iam_role_policy_attachment.eks]
}
