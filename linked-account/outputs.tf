output "role_id" {
  description = "IAM Role id of cloudability"
  value       = aws_iam_role.cloudability_role.id
}

output "role_arn" {
  description = "IAM Role arn of cloudability"
  value       = aws_iam_role.cloudability_role.arn
}

output "external_id" {
  description = "Cloudability AWS Account External ID"
  value       = cloudability_account.aws_account.external_id
}