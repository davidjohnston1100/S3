resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = "private"
  object_lock_configuration {
    object_lock_enabled = var.object_lock
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = var.versioning_configuration
  }
}
  
resource "aws_s3_bucket_accelerate_configuration" "this" {
  bucket = aws_s3_bucket.this.bucket
  status = var.bucket_accelerate
}
  
resource "aws_kms_key" "this" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.this.arn
      sse_algorithm     = "aws:kms"
    }
  }
}  
  
#create read write s3 access for ec2 instance  
resource "aws_iam_policy" "s3_access" {
  name = "s3-access"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Resource": [
        "arn:aws:s3:::${aws_s3_bucket.this.arn}",
        "arn:aws:s3:::${aws_s3_bucket.this.arn}/*"
      ]
    }
  ]
}
EOF
}
  
  
resource "aws_iam_role" "ec2_role" {
  name = "ec2-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "s3_access" {
  role = aws_iam_role.ec2_role.name
  policy_arn = aws_iam_policy.s3_access.arn
}
