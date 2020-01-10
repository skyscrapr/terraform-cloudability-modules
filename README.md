# Skyscrapr Cloudability Terraform Modules

This repo contains Cloudability Terraform modules developed by Skyscrapr.

## Using Modules

1. To use a module from this repository, add a block like the following to
   your terraform code:

    ```hcl
        module "cloudability_linked_account" {
            source = "github.com/skyscraper/terraform-cloudability-modules/linked-account"
            var_one = "foo"
            var_two = "bar"
        }
    ```
2. Run ``terraform get`` to acquire the module.
3. Run ``terraform plan`` to see what would happen.
