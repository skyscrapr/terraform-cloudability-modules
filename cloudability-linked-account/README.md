# Cloudability AWS Linked Account Terraform Module

Terraform module which registers an AWS linked account with Cloudability.

## Terraform versions

Terraform 0.12

## Usage

```hcl
module "clouability_linked_account" {
    source = "github.com/skyscrapr/terraform-cloudability-modules//cloudability-linked-account"

    aws_payer_account_id = "123456789012"
    aws_account_id = "123456789013"
    aws_region = "ap-southeast-2"
    cloudability_apikey = "apikey"
}
```
