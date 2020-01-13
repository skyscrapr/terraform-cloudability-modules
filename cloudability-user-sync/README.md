# Cloudability User Management Terraform Module

Terraform module which syncs Cloudability users with an ldap directory.
Supports admin and standard users groups.

## Terraform versions

Terraform 0.12

## Usage

```hcl
module "clouability_user_sync" {
    source = "github.com/skyscrapr/terraform-cloudability-modules/cloudability-user-sync"

    cloudability_apikey = "apikey"

    admin_group_name = "admin"
    user_group_name = "user"
}
```

## TODO

1. Finish the module