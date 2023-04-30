terraform {
  required_providers {
    cloudability = {
      source = "skyscrapr/cloudability"
    }
  }
}

provider cloudability {
    apikey = var.cloudability_apikey
}
