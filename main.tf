resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = "private"
  object_lock_configuration {
    object_lock_enabled = "Enabled"
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
  }
}

