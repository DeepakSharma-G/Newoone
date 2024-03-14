provider "azurerm" {
  features {}
  subscription_id = "8e6e9111-1742-43e3-9897-0c0765f6f068"
  client_id       = "c763e790-cf3d-467e-9647-b5775b5b1365"
  client_secret   = "3517f37e-d751-4a66-89c9-25368a05dc5e"
  tenant_id       = "11a5edd4-38c5-4abd-9e4c-92e8cd2203b7"
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

