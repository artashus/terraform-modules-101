resource "aws_s3_bucket" "main" {
  bucket = "${var.bucket_name}${var.bucket_suffix}" 
  acl    = "private"

  tags = {
    Pair = var.bucket_pair
  }
}