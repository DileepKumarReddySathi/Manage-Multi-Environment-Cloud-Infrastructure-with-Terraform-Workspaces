variable "project_name" {
  description = "The name of the project"
  type        = string
}



variable "private_subnets" {
  description = "List of private subnet IDs for DB subnet group"
  type        = list(string)
}

variable "security_group_id" {
  description = "The ID of the RDS security group"
  type        = string
}

variable "db_username" {
  description = "Database administrator username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
}

variable "instance_class" {
  description = "The RDS instance class"
  type        = string
}

variable "multi_az" {
  description = "Enable Multi-AZ for RDS"
  type        = bool
}
