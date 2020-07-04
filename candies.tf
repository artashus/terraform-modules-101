resource "aws_s3_bucket" "main" {
  bucket = "20200621-bucket1"
  acl    = "private"
}

module "mars-1" {
  source = "./modules/choco"
  bucket_name = "20200621-bucket2"
} 


module "snickers" {
  source = "./modules/choco"
  bucket_name = "20200621-snickers"
  bucket_suffix = "-suffix"
  bucket_pair = module.mars-1.bucket_arn
}

# module "chupachups" {
#   source = "./modules/lollypop"
#   bucket_name = "20200621-chupachups"
#   providers = {
#       aws.main = aws
#       aws.backup = aws.usa
#       } 
# }

# module "haribo" {
#   source = "./modules/gummy"
#   bucket_name = "20200621-haribo1"
# } 
