terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.85.0"
    }
  }
}
provider "azurerm" {
  features {}

  subscription_id = "75bbecc4-e279-46be-870d-a51763737402"
  client_id       = "df039944-d201-4393-9ad0-2eef4ddf22e8"
  client_secret   = "K3h7Q~6~rqw7seKd1mNsN9DXjgIkK.0N4nLTB"
  tenant_id       = "10231190-ca18-4bce-9e4b-99378245ae2d"
}

resource "azurerm_storage_account" "example" {
  name                     = "storageacc1990"
  resource_group_name      = "firstresourcegroup"
  location                 = "centralus"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}