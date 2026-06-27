locals {
  project_name = "${var.project_name}-${terraform.workspace}"
}

data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "./modules/vpc"

  project_name         = local.project_name
  vpc_cidr             = var.vpc_cidr
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  availability_zones   = slice(data.aws_availability_zones.available.names, 0, 2)
}

module "security_groups" {
  source = "./modules/security_groups"

  project_name = local.project_name
  vpc_id       = module.vpc.vpc_id
}

module "alb" {
  source = "./modules/alb"

  project_name       = local.project_name
  vpc_id             = module.vpc.vpc_id
  public_subnets     = module.vpc.public_subnets
  security_group_id  = module.security_groups.alb_sg_id
}

module "compute" {
  source = "./modules/compute"

  project_name       = local.project_name
  vpc_id             = module.vpc.vpc_id
  private_subnets    = module.vpc.private_subnets
  security_group_id  = module.security_groups.ec2_sg_id
  target_group_arn   = module.alb.target_group_arn
  instance_type      = var.ec2_instance_type
}

module "rds" {
  source = "./modules/rds"

  project_name       = local.project_name
  private_subnets    = module.vpc.private_subnets
  security_group_id  = module.security_groups.rds_sg_id
  db_username        = var.db_username
  db_password        = var.db_password
  instance_class     = var.rds_instance_class
  multi_az           = var.rds_multi_az
}
