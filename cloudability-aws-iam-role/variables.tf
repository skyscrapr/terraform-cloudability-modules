variable "aws_region" {
  description = "AWS Region"
}

variable "aws_cloudability_account_id" {
  description = "AWS Cloudability Account ID"
  default = "165736516723"
}

variable "cloudability_account_external_id" {
  description = "Cloudability Account External ID"
}

variable "role_name" {
  description = "Name of Cloudability Role"
  default     = "CloudabilityRole"
}

variable "verification_policy_name" {
  description = "Name of verification iam policy"
  default     = "CloudabilityVerificationPolicy"
}

variable "monitor_policy_name" {
  description = "Name of monitor iam policy"
  default     = "CloudabilityMonitorResourcesPolicy"
}
