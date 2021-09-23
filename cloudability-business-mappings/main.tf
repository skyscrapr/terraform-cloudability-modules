terraform {
  required_providers {
    cloudability = {
      source = "skyscrapr/cloudability"
      version = "0.0.10"
    }
  }
}

provider cloudability {
    apikey = var.cloudability_apikey
}
