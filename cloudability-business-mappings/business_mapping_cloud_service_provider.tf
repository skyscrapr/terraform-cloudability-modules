resource "cloudability_business_mapping" "cloud_service_provider" {
    name = "Cloud Service Provider"
    default_value = "Unknown Cloud Service Provider"
    kind = "BUSINESS_DIMENSION"
    statement {
        match_expression = "DIMENSION['vendor'] == 'Amazon'"
        value_expression = "'Amazon'"
    }
    statement {
        match_expression = "DIMENSION['vendor'] == 'Azure'"
        value_expression = "'Azure'"
    }
}

resource "cloudability_view" "Amazon" {
    title = "Amazon"
    filter = {
        # This prefix might need to be coded in the provider or sdk
        field = "category${cloudability_business_mapping.cloud_service_provider.id}"
		comparator = "=="
		value = "Amazon"
    }
}

resource "cloudability_view" "Azure" {
    title = "Azure"
    filter = {
        field = "category${cloudability_business_mapping.cloud_service_provider.id}"
		comparator = "=="
		value = "Azure"
    }
}