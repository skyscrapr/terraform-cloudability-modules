# output "account_id" {
#   description = "Cloudability AWS Account ID"
#   value       = cloudability_linked_account.aws_account.vendor_account_id
# }

output "external_id" {
  description = "Cloudability AWS Linked Account External ID"
  value       = cloudability_linked_account.aws_account.external_id
}