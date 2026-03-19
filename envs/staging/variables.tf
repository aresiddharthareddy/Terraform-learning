# variable "backend_bucket" {
#   type = string
# }

# variable "backend_region" {
#   type = string
# }

# variable "backend_key" {
#   type = string
# }

# VPC Variables
variable "cidr_block" {
  type = string
}

variable "public_cidr_block" {
  type = string
}

variable "private_cidr_block" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "private_availability_zone" {
  type = string
}

variable "public_rt_cidr" {
  type = string
}

variable "private_rt_cidr" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "enable_dns_support" {
  type = bool
}

variable "environment" {
  type = string
}

variable "project" {
  type = string
}

# EKS Variables
variable "cluster_name" {
  type = string
}

variable "node_group_name" {
  type = string
}

variable "desired_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "instance_types" {
  type = list(string)
}

variable "existing_user_name" {
  type = string
}

variable "cluster_role_name" {
  type = string
}

variable "node_role_name" {
  type = string
}

# VPC Resource Names
variable "vpc_name" {
  type = string
}

variable "igw_name" {
  type = string
}

variable "nat_eip_name" {
  type = string
}

variable "public_subnet_name" {
  type = string
}

variable "nat_gateway_name" {
  type = string
}

variable "private_subnet_name" {
  type = string
}

variable "public_rt_name" {
  type = string
}

variable "private_rt_name" {
  type = string
}