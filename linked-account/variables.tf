variable "aws_region" {
  description = "AWS Region"
}

variable "aws_payer_account_id" {
  description = "AWS Payer Account ID"
}

variable "aws_account_id" {
  description = "AWS Account ID to configure in Cloudability"
}

variable "cloudability_apikey" {
  description = "Cloudability API access key"
}

variable "aws_cloudability_account_id" {
  description = "AWS Cloudability Account ID"
  default = "165736516723"
}

variable "role_name" {
  description = "Name of Cloudability Role"
  default     = "CloudabilityRole"
}

variable "monitor_policy_name" {
  description = "Name of monitor iam policy"
  default     = "CloudabilityMonitorResourcesPolicy"
}
