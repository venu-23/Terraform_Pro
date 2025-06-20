variable "region" {
  description = "region for resources"
  type = string
}

variable "amiid" {
  description = "amiid for aws instance"
  type = string
}

variable "instance_type" {
  description = "instance type for instance"
  type = string
}

variable "s3Bucket" {
  description = "name of S3 bucket"
  type = string
  sensitive = "true"
}
