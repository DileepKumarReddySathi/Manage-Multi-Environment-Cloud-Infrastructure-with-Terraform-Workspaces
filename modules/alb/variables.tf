variable "project_name" {
  description = "The name of the project"
  type        = string
}



variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "security_group_id" {
  description = "The ID of the ALB security group"
  type        = string
}
