provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name
}

module "iam_user" {
  source      = "./modules/iam_user"
  name        = var.iam_user_name
  bucket_name = var.bucket_name
}

