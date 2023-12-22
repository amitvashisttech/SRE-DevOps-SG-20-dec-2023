# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  count   = 3 
  name     = "Green-RG_${count.index}"
  location = "West Europe"
}
