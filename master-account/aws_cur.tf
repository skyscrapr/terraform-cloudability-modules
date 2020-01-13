# Additional provider configuration for us-east-1 region
# CUR is only supported in us-east-1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

resource "aws_cur_report_definition" "cloudability" {
  report_name                = "Cloudability"
  time_unit                  = "HOURLY"
  format                     = "textORcsv"
  compression                = "GZIP"
  additional_schema_elements = ["RESOURCES"]
  s3_bucket                  = aws_s3_bucket.cloudability.bucket
  s3_region                  = var.aws_region
  s3_prefix                  = "CostAndUsageReports"
  provider                   = aws.us-east-1
}
