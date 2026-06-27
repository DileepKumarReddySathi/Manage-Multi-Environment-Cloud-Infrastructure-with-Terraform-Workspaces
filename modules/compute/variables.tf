variable "project_name" {
  description = "The name of the project"
  type        = string
}



variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "private_subnets" {
  description = "List of private subnet IDs for ASG"
  type        = list(string)
}

variable "security_group_id" {
  description = "The ID of the EC2 security group"
  type        = string
}

variable "target_group_arn" {
  description = "The ARN of the ALB target group"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
