# // get data from LDAP - Need an LDAP terraform provider with group data source
# //  - to sync admin users
# //  - to sync std users
# //  - to sync different filters and default filters

# resource "cloudability_user" "test_user" {
#     email = "test.user@test.com.test"
#     full_name = "Test User"
#     // invitation
#     role = "Administrator"
#     // restricted
#     // share_dimension_filter_set_ids
#     // default_dimension_filter_set_id
# }