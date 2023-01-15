output "s3_bucket_arn" {
  description = "S3 bucket arn"
  value       = aws_s3_bucket.this.arn
}

output "iam_role_arn" {
  description = "S3 bucket arn"
  value       = aws_iam_role.ec2_role.arn
}

output "iam_role_policy_attachment_arn" {
  description = ""
  value       = aws_iam_role_policy_attachment.s3_access.arn
}
