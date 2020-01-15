# Cloudability AWS Master Account Terraform Module

Terraform module which registers an AWS master account with Cloudability.
This is intended to automate the payer account.
In many situations, this might already be created.
In that case the resource can be imported to allow drift management.

NOTE: The Cloudability API does not document this API call but it was reverse engineering by monitoring network activity while orchestrating the Cloudability console.


## Terraform versions

Terraform 0.12

## Usage

```hcl
module "clouability_master_account" {
    source = "github.com/skyscrapr/terraform-cloudability-modules//cloudability-master-account"

    aws_payer_account_id = "123456789012"
    aws_region = "ap-southeast-2"
    cloudability_apikey = "apikey"
}
```
