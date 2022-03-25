output "bucket_id" {
  value = aws_s3_bucket.curso_terraform1.id
}

output "bucket_arn" {
  value = aws_s3_bucket.curso_terraform1.arn
}

output "bucket_acl" {
  value = aws_s3_bucket.curso_terraform1.acl
}

output "bucket_grant" {
  value = aws_s3_bucket.curso_terraform1.grant
}

output "bucket_regional_name" {
 value = aws_s3_bucket.curso_terraform1.bucket_regional_domain_name
}
