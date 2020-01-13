provider cloudability {
    apikey = var.cloudability_apikey
}

provider "aws" {
    region  = var.aws_region
}

module "cloudability_aws_iam_role" {
  source = "../cloudability-aws-iam-role"

  aws_region = var.aws_region
  cloudability_account_external_id = cloudability_linked_account.aws_account.external_id
}

data "cloudability_account_verification" "aws_payer_account" {
    vendor_account_id = var.aws_payer_account_id
}

resource "cloudability_linked_account" "aws_account" {
    vendor_account_id = var.aws_account_id
    depends_on = [
        data.cloudability_account.aws_payer_account,
    ]
}

data "cloudability_account_verification" "aws_account" {
    vendor_account_id = var.aws_account_id
    depends_on = [
        module.cloudability_aws_iam_role,
    ]
}

module "cloudability_aws_iam_role" {
  source = "../cloudability_aws_iam_role"
  cloudability_account_external_id = cloudability_linked_account.aws_account.external_id
}