resource "aws_s3_bucket" "a" {
  bucket = "prototype-bucket-${data.aws_caller_identity.current.account_id}"
}
