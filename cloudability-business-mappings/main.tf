terraform {
  required_providers {
    cloudability = {
      source = "skyscrapr/cloudability"
      version = "0.0.9"
    }
  }
}

provider cloudability {
    apikey = var.cloudability_apikey
}
