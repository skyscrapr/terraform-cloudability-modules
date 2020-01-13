# resource "cloudability_business_mapping" "tag_compliance" {
#     name = "Tag Compliance"
#     default_value = "Untagged"
#     kind = "BUSINESS_DIMENSION"
#     statement {
#         match_expression = "TAG['Cost Centre'] == 'valid_tag_1' || TAG['Cost Centre'] == 'valid_tag_1'"
#         value_expression = "'Correctly Tagged'"
#     }
#     statement {
#         match_expression = "EXISTS TAG['Cost Centre']"
#         value_expression = "'Incorrectly Tagged'"
#     }
# }

# resource "cloudability_view" "test_view" {
#     title = "Test-View"
# }