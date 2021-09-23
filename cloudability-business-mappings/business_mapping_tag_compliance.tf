resource "cloudability_business_mapping" "cost_center" {
    name = "CostCenter"
    default_value = "Unknown"
    kind = "BUSINESS_DIMENSION"
    statement {
        match_expression = "TAG['CostCenter'] == 'CostCenter1'"
        value_expression = "'CostCenter1'"
    }
    statement {
        match_expression = "TAG['CostCenter'] == 'CostCenter2'"
        value_expression = "'CostCenter2'"
    }
    statement {
        match_expression = "EXISTS TAG['CostCenter']"
        value_expression = "'Invalid CostCenter Tag'"
    }
}

# resource "cloudability_view" "test_view" {
#     title = "View"
# }

resource "cloudability_view" "CostCenter_CostCenter1" {
    title = "CostCenter1"
    filter {
        # This prefix might need to be coded in the provider or sdk
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter1"
    }
}

resource "cloudability_view" "CostCenter_CostCenter2" {
    title = "CostCenter2"
    filter {
        # This prefix might need to be coded in the provider or sdk
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter2"
    }
}