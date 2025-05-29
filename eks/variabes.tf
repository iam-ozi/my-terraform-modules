variable "cluster_name" {}

variable "k8s_version" {
  default = "1.29"
}
variable "cluster_iam_role_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "env" {
  default = "dev"
}
