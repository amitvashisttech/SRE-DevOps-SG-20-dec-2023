# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

/*
# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}


*/


resource "azurerm_resource_group" "blue" {
  name     = "Blue-RG"
  location = "West Europe"
}


resource "azurerm_resource_group" "green" {
  name     = "Green-RG"
  location = "West Europe"
}
