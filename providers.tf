terraform {
  required_providers {
    azurerm = {
      version = "4.38.0"
    }
  }
}

provider "azurerm" {
  features {
}
subscription_id = "<your-subscription-id"
}
