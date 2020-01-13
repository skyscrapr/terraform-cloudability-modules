output "external_id" {
  description = "Cloudability AWS Account External ID"
  value       = cloudability_master_account.aws_payer_account.external_id
}

output "report_name" {
  description = "Name of cost and usage report"
  value       = aws_cur_report_definition.cloudability.report_name
}

output "report_prefix" {
  description = "Prefix of cost and usage report"
  value       = aws_cur_report_definition.cloudability.s3_prefix
}

output "report_bucket" {
  description = "Cost and usage report s3 bucket"
  value       = aws_s3_bucket.cloudability.bucket
}