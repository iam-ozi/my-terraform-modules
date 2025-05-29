# my-terraform-modules
this repo holds my reusable modules

This repository contains reusable Terraform modules for AWS infrastructure provisioning.

## Modules Included

### 1. VPC Module
Creates a VPC with public and private subnets.

**Inputs:**
- `vpc_name`
- `vpc_cidr`
- `public_subnet_cidrs`
- `private_subnet_cidrs`
- `azs`

**Outputs:**
- `vpc_id`
- `public_subnet_ids`
- `private_subnet_ids`

### 2. EKS Module
Creates an EKS control plane.

**Inputs:**
- `cluster_name`
- `k8s_version`
- `cluster_iam_role_arn`
- `subnet_ids`
- `env`

**Outputs:**
- `cluster_name`
- `cluster_endpoint`
- `cluster_ca_certificate`

### 3. IAM Module
Creates IAM roles and policies for EKS cluster and node groups.

**Inputs:**
- `name_prefix`

**Outputs:**
- `eks_cluster_role_arn`
- `eks_node_role_arn`

### 4. Node Group Module
Creates EKS managed node groups.

**Inputs:**
- `cluster_name`
- `node_group_name`
- `node_role_arn`
- `subnet_ids`
- `desired_size`
- `max_size`
- `min_size`
- `instance_types`
- `ami_type`
- `env`

**Outputs:**
- `node_group_name`

## Usage
Use these modules in your Terraform root configuration by sourcing them as needed.
"""
