variable "region" {
  description = "AWS region for resources"
  type        = string
}

variable "iam_user_name" {
  description = "IAM username"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  sensitive   = true
}

