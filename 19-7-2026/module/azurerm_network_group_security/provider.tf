terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "jpdevopsrg_statefile"
    storage_account_name = "remotestatejapan"
    container_name       = "statefile"
    key                  = "nsg.tfstate"
  }
}
provider "azurerm" {
  features {
  }
}
