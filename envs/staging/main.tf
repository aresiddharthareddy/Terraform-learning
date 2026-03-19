module "vpc" {
  source = "../../modules/vpc"

  cidr_block                   = var.cidr_block
  public_cidr_block           = var.public_cidr_block
  private_cidr_block          = var.private_cidr_block
  availability_zone           = var.availability_zone
  private_availability_zone   = var.private_availability_zone
  public_rt_cidr             = var.public_rt_cidr
  private_rt_cidr            = var.private_rt_cidr
  enable_dns_hostnames       = var.enable_dns_hostnames
  enable_dns_support         = var.enable_dns_support
  vpc_name                   = var.vpc_name
  igw_name                   = var.igw_name
  nat_eip_name              = var.nat_eip_name
  public_subnet_name        = var.public_subnet_name
  nat_gateway_name          = var.nat_gateway_name
  private_subnet_name       = var.private_subnet_name
  public_rt_name            = var.public_rt_name
  private_rt_name           = var.private_rt_name

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}

module "iam" {
  source = "../../modules/iam"
  existing_user_name = var.existing_user_name
  cluster_role_name = var.cluster_role_name
  node_role_name = var.node_role_name
}

module "eks" {
  source = "../../modules/eks"

  cluster_name      = var.cluster_name
  cluster_role_arn  = module.iam.cluster_role_arn
  node_role_arn     = module.iam.node_role_arn
  subnet_ids        = [module.vpc.public_subnet_id, module.vpc.private_subnet_id]
  node_group_name   = var.node_group_name
  desired_size      = var.desired_size
  max_size          = var.max_size
  min_size          = var.min_size
  instance_types    = var.instance_types
}