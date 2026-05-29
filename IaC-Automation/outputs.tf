# Outputs for CloudOps Terraform Configuration

output "s3_bucket_name" {
  description = "Name of the S3 bucket created"
  value       = aws_s3_bucket.cloudops_bucket.id
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.cloudops_bucket.arn
}

output "security_group_id" {
  description = "ID of the security group created"
  value       = aws_security_group.cloudops_sg.id
}

output "security_group_name" {
  description = "Name of the security group"
  value       = aws_security_group.cloudops_sg.name
}