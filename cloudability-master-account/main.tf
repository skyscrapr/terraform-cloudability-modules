provider cloudability {
    apikey = var.cloudability_apikey
}

provider "aws" {
    region = var.aws_region
}

module "cloudability_aws_iam_role" {
  source = "github.com/skyscrapr/terraform-cloudability-modules//cloudability-aws-iam-role"
  # source = "../cloudability-aws-iam-role"

  aws_region = var.aws_region
  cloudability_account_external_id = cloudability_master_account.aws_payer_account.external_id
}

resource "cloudability_master_account" "aws_payer_account" {
    vendor_account_id = var.aws_payer_account_id
    bucket_name = aws_s3_bucket.cloudability.bucket
    report_name = "Cloudability"
    report_prefix = "CostAndUsageReports"
}

data "cloudability_account_verification" "aws_payer_account" {
    vendor_account_id = var.aws_payer_account_id
    depends_on = [
        module.cloudability_aws_iam_role,
    ]
}
