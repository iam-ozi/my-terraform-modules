// my-terraform-modules/iam/variables.tf

variable "name_prefix" {
  description = "Prefix to use for naming IAM roles (e.g., 'dev', 'prod')."
  type        = string
}
