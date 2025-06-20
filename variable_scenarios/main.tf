provider "aws" {
 region = var.region
}


resource "aws_instance" "myEc2" {
   ami = var.amiid
   instance_type = var.instance_type
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = var.s3Bucket
}
