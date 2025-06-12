variable "vpc_name" {}

variable "vpc_cidr" {}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "cluster_name" {
  description = "Name of the EKS cluster (used to tag subnets)"
  type        = string
}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {}
}

variable "create_nat_gateway" {
  description = "Whether to create a NAT gateway for private subnet internet access"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Whether to create only one NAT gateway (not used yet but useful for future extension)"
  type        = bool
  default     = true
}
