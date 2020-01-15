# Cloudability AWS IAM Role Module

Terraform module which creates the CloudabilityRole role.

## Terraform versions

Terraform 0.12

## Usage

```hcl
module "clouability_aws_iam_role" {
    source = "github.com/skyscrapr/terraform-cloudability-modules//cloudability-aws-iam-role"

    aws_region = "ap-southeast-2"
    cloudability_account_external_id = "[external_id]"
}
```
