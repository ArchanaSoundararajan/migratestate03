
resource "azurerm_resource_group" "example" {
  name     = "example03-rg"
  location = "West Europe"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "migrate-sg"
    storage_account_name = "migratesg01"
    container_name       = "tfstate03"
    key                  = "state03.terraform.tfstate"
  }
}

provider "azurerm" {
  features {
  }
}
