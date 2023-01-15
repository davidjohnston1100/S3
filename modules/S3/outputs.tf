output "s3_bucket_arn" {
  description = "S3 bucket arn"
  value       = aws_s3_bucket.this.arn
}

output "aws_iam_instance_profile_id" {
  description = ""
  value       = aws_iam_instance_profile.ec2_s3_read_write_access.id
}
