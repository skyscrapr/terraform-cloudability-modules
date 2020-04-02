# The ony CUR endpoint currently available is in us-east-1:
#  - https://docs.aws.amazon.com/general/latest/gr/billing.html
#  - https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html
# Additional provider configuration for us-east-1 region
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
