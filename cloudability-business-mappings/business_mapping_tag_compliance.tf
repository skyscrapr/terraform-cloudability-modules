# resource "cloudability_business_mapping" "costcentre_tag" {
#     name = "Tag Compliance"
#     default_value = "Untagged"
#     kind = "BUSINESS_DIMENSION"
#     statement {
#         match_expression = "TAG['CostCentre'] == 'CostCentre1' || TAG['CostCentre'] == 'CostCentre2'"
#         value_expression = "'Valid Cost Centre'"
#     }
#     statement {
#         match_expression = "EXISTS TAG['Cost Centre']"
#         value_expression = "'Invalid Cost Centre Allocated'"
#     }
# }

# # resource "cloudability_view" "test_view" {
# #     title = "View"
# # }