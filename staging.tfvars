aws_region           = "us-east-1"
project_name         = "web-app-infra"
vpc_cidr             = "10.1.0.0/16"
public_subnets_cidr  = ["10.1.1.0/24", "10.1.2.0/24"]
private_subnets_cidr = ["10.1.11.0/24", "10.1.12.0/24"]
ec2_instance_type    = "t2.micro"
rds_instance_class   = "db.t3.micro"
rds_multi_az         = false
