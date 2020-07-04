provider "aws" {
  alias = "main"
}

provider "aws" {
  alias = "backup"
}

resource "aws_s3_bucket" "main" {
  bucket = "${var.bucket_name}${var.bucket_suffix}-main" 
  acl    = "private"

  provider = aws.main

  tags = {
    Pair = var.bucket_pair
  }
}

resource "aws_s3_bucket" "backup" {
  bucket = "${var.bucket_name}${var.bucket_suffix}-backup" 
  acl    = "private"

  provider = aws.backup

  tags = {
    Pair = var.bucket_pair
  }
}