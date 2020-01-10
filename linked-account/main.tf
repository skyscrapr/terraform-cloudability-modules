provider cloudability {
    apikey = var.cloudability_apikey
}

provider "aws" {
    region  = var.aws_region
}

data "cloudability_account" "aws_payer_account" {
    vendor_account_id = var.aws_payer_account_id
}

resource "cloudability_account" "aws_account" {
    vendor_account_id = var.aws_account_id
    depends_on = [
        data.cloudability_account.aws_payer_account,
    ]
}

data "cloudability_account" "aws_account" {
    vendor_account_id = var.aws_account_id
    depends_on = [
        aws_iam_role.cloudability_role,
    ]
}
