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
environment = "dev"
project = "terraform-eks"

# EKS Configuration
cluster_name = "eks-dev-cluster"
node_group_name = "eks-dev-nodes"
desired_size = 2
max_size = 3
min_size = 1
instance_types = ["t3.micro"]

# IAM Configuration
existing_user_name = "terraform-learning"
cluster_role_name = "eks-dev-cluster-role"
node_role_name = "eks-dev-node-role"

# VPC Resource Names
vpc_name = "eks-dev-vpc"
igw_name = "eks-dev-igw"
nat_eip_name = "eks-dev-nat-eip"
public_subnet_name = "eks-dev-public-subnet"
nat_gateway_name = "eks-dev-nat-gateway"
private_subnet_name = "eks-dev-private-subnet"
public_rt_name = "eks-dev-public-rt"
private_rt_name = "eks-dev-private-rt"