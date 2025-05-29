variable "cluster_name" {
}
variable "node_group_name" {
}
variable "node_role_arn" {
}
variable "subnet_ids" {
  type = list(string)
}
variable "desired_size" {
  default = 2
}
variable "max_size" {
  default = 3
}
variable "min_size" {
  default = 1
}
variable "instance_types" {
  type    = list(string)
  default = ["t3.medium"]
}
variable "ami_type" {
  default = "AL2_x86_64"
}
variable "env" {
  default = "dev"
}
