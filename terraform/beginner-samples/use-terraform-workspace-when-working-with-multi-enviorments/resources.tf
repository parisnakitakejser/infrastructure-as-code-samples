resource "aws_s3_bucket" "aprototype_bucket" {
  bucket = "prototype-bucket-${terraform.workspace}-${data.aws_caller_identity.current.account_id}"
}
