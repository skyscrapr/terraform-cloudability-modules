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
        match_expression = "TAG['CostCenter'] == 'CostCenter3'"
        value_expression = "'CostCenter3'"
    }
    statement {
        match_expression = "TAG['CostCenter'] == 'CostCenter4'"
        value_expression = "'CostCenter4'"
    }
    statement {
        match_expression = "TAG['CostCenter'] == 'CostCenter5'"
        value_expression = "'CostCenter5'"
    }
    statement {
        match_expression = "TAG['CostCenter'] == 'CostCenter6'"
        value_expression = "'CostCenter6'"
    }
        statement {
        match_expression = "TAG['CostCenter'] == 'CostCenter7'"
        value_expression = "'CostCenter7'"
    }
    statement {
        match_expression = "TAG['CostCenter'] == 'CostCenter8'"
        value_expression = "'CostCenter8'"
    }
    statement {
        match_expression = "TAG['CostCenter'] == 'CostCenter9'"
        value_expression = "'CostCenter9'"
    }
    statement {
        match_expression = "EXISTS TAG['CostCenter']"
        value_expression = "'Invalid CostCenter Tag'"
    }
}

resource "cloudability_view" "CostCenter_CostCenter1" {
    title = "CostCenter1"
    filter {
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter1"
    }
}
resource "cloudability_view" "CostCenter_CostCenter2" {
    title = "CostCenter2"
    filter {
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter2"
    }
}
resource "cloudability_view" "CostCenter_CostCenter3" {
    title = "CostCenter3"
    filter {
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter3"
    }
}
resource "cloudability_view" "CostCenter_CostCenter4" {
    title = "CostCenter4"
    filter {
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter4"
    }
}
resource "cloudability_view" "CostCenter_CostCenter5" {
    title = "CostCenter5"
    filter {
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter5"
    }
}
resource "cloudability_view" "CostCenter_CostCenter6" {
    title = "CostCenter6"
    filter {
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter6"
    }
}
resource "cloudability_view" "CostCenter_CostCenter7" {
    title = "CostCenter7"
    filter {
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter7"
    }
}
resource "cloudability_view" "CostCenter_CostCenter8" {
    title = "CostCenter8"
    filter {
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter8"
    }
}
resource "cloudability_view" "CostCenter_CostCenter9" {
    title = "CostCenter9"
    filter {
        field = "category${cloudability_business_mapping.cost_center.id}"
		comparator = "=="
		value = "CostCenter9"
    }
}