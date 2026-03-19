# VPC Configuration
cidr_block = "10.0.0.0/16"
public_cidr_block = "10.0.1.0/24"
private_cidr_block = "10.0.2.0/24"
availability_zone = "us-west-1a"
private_availability_zone = "us-west-1c"
public_rt_cidr = "0.0.0.0/0"
private_rt_cidr = "0.0.0.0/0"
enable_dns_hostnames = true
enable_dns_support = true
environment = "prod"
project = "terraform-eks"

# EKS Configuration
cluster_name = "eks-prod-cluster"
node_group_name = "eks-prod-nodes"
desired_size = 2
max_size = 3
min_size = 1
instance_types = ["t3.micro"]

# IAM Configuration
existing_user_name = "terraform-learning"
cluster_role_name = "eks-prod-cluster-role"
node_role_name = "eks-prod-node-role"

# VPC Resource Names
vpc_name = "eks-prod-vpc"
igw_name = "eks-prod-igw"
nat_eip_name = "eks-prod-nat-eip"
public_subnet_name = "eks-prod-public-subnet"
nat_gateway_name = "eks-prod-nat-gateway"
private_subnet_name = "eks-prod-private-subnet"
public_rt_name = "eks-prod-public-rt"
private_rt_name = "eks-prod-private-rt"