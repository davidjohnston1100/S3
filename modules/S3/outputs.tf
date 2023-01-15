output "s3_bucket_arn" {
  description = "S3 bucket arn"
  value       = aws_s3_bucket.this.arn
}

output "iam_role_arn" {
  description = "S3 bucket arn"
  value       = aws_iam_role.ec2_role.arn
}

output "iam_role_id" {
  description = ""
  value       = aws_iam_role.ec2_role.id
}

output "iam_policy_arn" {
  description = ""
  value       = aws_iam_policy.s3_access.arn
}

output "aws_iam_instance_profile_arn" {
  description = ""
  value       = aws_iam_instance_profile.ec2_s3_read_write_access.arn
}
