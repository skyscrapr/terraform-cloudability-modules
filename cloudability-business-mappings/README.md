# Cloudability Business Mappings Module

Terraform module which maintains the Cloudability business mappings.

## Terraform versions

Terraform 0.12

## Usage

```hcl
module "clouability_business_mappings" {
    source = "github.com/skyscrapr/terraform-cloudability-modules/cloudability-business-mappings"

    cloudability_account_external_id = "[external_id]"
}
```

## TODO

1. move the "category" prefix in views into the SDK
2. add an script to simulate getting valid tags
3. finish the tag_compliance template