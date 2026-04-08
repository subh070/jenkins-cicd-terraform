variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "stage" {
  description = "Which infrastructure stage to manage"
  type        = string
  default     = "ec2"

  validation {
    condition     = contains(["ec2", "s3", "all"], var.stage)
    error_message = "stage must be one of: ec2, s3, all."
  }
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
  default     = "ami-0f5ee92e2d63afc18"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "s3_bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
  default     = "shadow-subho-terraform-2026-001"
}

variable "s3_force_destroy" {
  description = "Allow deleting non-empty bucket"
  type        = bool
  default     = false
}