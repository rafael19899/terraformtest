variable "region" {
  description = "The AWS region"
  default     = "us-east-2"
}

variable "ami_id" {
  description = "The AMI ID to use"
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "The instance type"
  default     = "t3.medium"
}

variable "db_username" {
  description = "The master username for RDS"
}

variable "db_password" {
  description = "The master password for RDS"
}

variable "vpc_security_group_ids" {
  description = "The security group IDs for the VPC"
  type        = list(string)
  default     = ["sg-031cc3dcf2dcd9737"]
}

variable "db_subnet_group_name" {
  description = "The DB subnet group name"
  default     = "default-vpc-0fe08d86539991b68"
}

variable "subnet_ids" {
  description = "The subnet IDs for the Auto Scaling Group"
  type        = list(string)
  default     = ["subnet-07ed8fbe19fe0bbbe", "subnet-0ea6a4dbdddf9665f", "subnet-009147405830511d0"]
}
