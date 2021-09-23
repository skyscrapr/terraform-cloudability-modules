terraform {
  required_providers {
    cloudability = {
      source = "skyscrapr/cloudability"
      version = "0.0.8"
    }
  }
}

provider cloudability {
    apikey = var.cloudability_apikey
}
