module "bucket1" {
  source         = "./modules/bucket"
  s3_bucket_name = "bucket1"

}

module "bucket2" {
  source         = "./modules/bucket"
  s3_bucket_name = "bucket2"

}
