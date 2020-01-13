variable "aws_region" {
  description = "AWS Region"
}

variable "aws_payer_account_id" {
  description = "AWS Payer Account ID"
}

variable "cloudability_apikey" {
  description = "Cloudability API access key"
}

variable "master_payer_policy_name" {
  description = "Name of master payer iam policy"
  default     = "CloudabilityMasterPayerPolicy"
}

variable "role_name" {
  description = "Name of Cloudability Role"
  default     = "CloudabilityRole"
}

variable "aws_s3_bucket_name_prefix" {
  description = "Name prefix of Cloudability S3 Bucket"
  default = "cloudability-"
}
