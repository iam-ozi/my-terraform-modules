## Variable Definition for EC2 Instance Resources

variable "ami_id" {}

variable "instance_type" {}

variable "key_name" {}

variable "subnet_id" {}

variable "vpc_id" {}

variable "instance_name" {}

variable "user_data_file" {}

variable "port" {
  description = "Port to expose for this instance (e.g., 8080 for Jenkins, 8081 for Nexus)"
}
