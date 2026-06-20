terraform {
  required_providers {
    azurerm={
        source = "hoshicorp/azurerm"
        version = "4.60.0"
    }
  }
}
provider "azurerm" {
  features{}
}