resource "cloudability_business_mapping" "cost_code" {
    name = "CostCode"
    default_value = "Unknown"
    kind = "BUSINESS_DIMENSION"
    statement {
        match_expression = "TAG['CostCode'] == 'CostCode2'"
        value_expression = "'CostCode1'"
    }
    statement {
        match_expression = "TAG['CostCode'] == 'CostCode2'"
        value_expression = "'CostCode2'"
    }
    statement {
        match_expression = "TAG['CostCode'] == 'CostCode3'"
        value_expression = "'CostCode3'"
    }
    statement {
        match_expression = "TAG['CostCode'] == 'CostCode4'"
        value_expression = "'CostCode4'"
    }
    statement {
        match_expression = "TAG['CostCode'] == 'CostCode5'"
        value_expression = "'CostCode5'"
    }
    statement {
        match_expression = "TAG['CostCode'] == 'CostCode6'"
        value_expression = "'CostCode6'"
    }
        statement {
        match_expression = "TAG['CostCode'] == 'CostCode7'"
        value_expression = "'CostCode7'"
    }
    statement {
        match_expression = "TAG['CostCode'] == 'CostCode8'"
        value_expression = "'CostCode8'"
    }
    statement {
        match_expression = "EXISTS TAG['CostCode']"
        value_expression = "'Invalid CostCode Tag'"
    }
}

resource "cloudability_view" "CostCode_CostCode1" {
    title = "CostCode1"
    filter {
        field = "category${cloudability_business_mapping.cost_code.id}"
		comparator = "=="
		value = "CostCode1"
    }
}
resource "cloudability_view" "CostCode_CostCode2" {
    title = "CostCode2"
    filter {
        field = "category${cloudability_business_mapping.cost_code.id}"
		comparator = "=="
		value = "CostCode2"
    }
}
resource "cloudability_view" "CostCode_CostCode3" {
    title = "CostCode3"
    filter {
        field = "category${cloudability_business_mapping.cost_code.id}"
		comparator = "=="
		value = "CostCode3"
    }
}
resource "cloudability_view" "CostCode_CostCode4" {
    title = "CostCode4"
    filter {
        field = "category${cloudability_business_mapping.cost_code.id}"
		comparator = "=="
		value = "CostCode4"
    }
}
resource "cloudability_view" "CostCode_CostCode5" {
    title = "CostCode5"
    filter {
        field = "category${cloudability_business_mapping.cost_code.id}"
		comparator = "=="
		value = "CostCode5"
    }
}
resource "cloudability_view" "CostCode_CostCode6" {
    title = "CostCode6"
    filter {
        field = "category${cloudability_business_mapping.cost_code.id}"
		comparator = "=="
		value = "CostCode6"
    }
}
resource "cloudability_view" "CostCode_CostCode7" {
    title = "CostCode7"
    filter {
        field = "category${cloudability_business_mapping.cost_code.id}"
		comparator = "=="
		value = "CostCode7"
    }
}
resource "cloudability_view" "CostCode_CostCode8" {
    title = "CostCode8"
    filter {
        field = "category${cloudability_business_mapping.cost_code.id}"
		comparator = "=="
		value = "CostCode8"
    }
}