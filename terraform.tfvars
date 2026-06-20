aws_region           = "us-east-1"
project_name         = "web-app-infra"
environment          = "production"
vpc_cidr             = "10.0.0.0/16"
public_subnets_cidr  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets_cidr = ["10.0.11.0/24", "10.0.12.0/24"]

# IMPORTANT: Do not commit actual sensitive passwords to version control.
# This file is typically added to .gitignore in real projects if it contains secrets.
# Alternatively, you can use environment variables (TF_VAR_db_username) or AWS Secrets Manager.
db_username = "dbadmin"
db_password = "SuperSecretPassword123!"
