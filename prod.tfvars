aws_region           = "us-east-1"
project_name         = "web-app-infra"
vpc_cidr             = "10.2.0.0/16"
public_subnets_cidr  = ["10.2.1.0/24", "10.2.2.0/24"]
private_subnets_cidr = ["10.2.11.0/24", "10.2.12.0/24"]
ec2_instance_type    = "t3.medium"
rds_instance_class   = "db.t3.small"
rds_multi_az         = true
